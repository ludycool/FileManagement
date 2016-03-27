﻿
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;
using Newtonsoft.Json;

using System.Data.Common;
using e3net.common.SysMode;
using e3net.Mode.FileManagementDB;
using e3net.Mode.HttpView;
using e3net.BLL;
using System.Data;
using TZHSWEET.Common;

namespace ESUI.Controllers
{
    //[Export]
    public class TF_PersonnelFile_ConsultController : JsonNetController
    {

        [Dependency]
        public TF_PersonnelFile_ConsultBiz OPBiz { get; set; }
        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }
        /// <summary>
        /// 登记页面
        /// </summary>
        /// <returns></returns>
        public ActionResult Add()
        {
            ViewBag.RuteUrl = RuteUrl();
            return View();
        }

        [HttpPost]
        public JsonResult Search()
        {
            // SelectWhere.selectwherestring(Request["sqlSet"]);
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            //string Where = Request["sqlSet"] == null ? "1=1" : SelectWhere.selectwherestring(Request["sqlSet"]);
            string Where = Request["sqlSet"] == null ? "1=1" : GetSql(Request["sqlSet"]);

            Where += " and (isDeleted=0) ";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "TF_PersonnelFile_Consult";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            //List<TF_PersonnelFile_Consult> list2 = OPBiz.GetPagingData<TF_PersonnelFile_Consult>(pc);
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_PersonnelFile_ConsultSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(TF_PersonnelFile_Consult EidModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;


            if (!(EidModle.Id != null && !EidModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                EidModle.Id = Guid.NewGuid();
                EidModle.CreateMan = UserData.UserName;
                EidModle.CreateManId = UserData.Id;
                EidModle.CreateTime = DateTime.Now;

                EidModle.isDeleted = false;
                EidModle.States = 0;
                try
                {
                    OPBiz.Add(EidModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = EidModle.Id.ToString();
                    ReSultMode.Msg = "添加成功";
                }
                catch (Exception e)
                {

                    ReSultMode.Code = -11;
                    ReSultMode.Data = e.ToString();
                    ReSultMode.Msg = "添加失败";
                }

            }
            else
            {
                EidModle.WhereExpression = TF_PersonnelFile_ConsultSet.Id.Equal(EidModle.Id);
                // EidModle.ChangedMap.Remove("id");//移除主键值
                if (OPBiz.Update(EidModle) > 0)
                {
                    ReSultMode.Code = 11;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "修改成功";
                }
                else
                {
                    ReSultMode.Code = -13;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "修改失败";
                }
            }


            return Json(ReSultMode, JsonRequestBehavior.AllowGet);

        }

        public JsonResult AddList(string listAll)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();

            List<TF_PersonnelFile_Consult> listItem = JsonHelper.JSONToList<TF_PersonnelFile_Consult>(listAll);

            if (listItem != null && listItem.Count > 0)
            {
                for (int i = 0; i < listItem.Count; i++)
                {
                    TF_PersonnelFile_Consult EidModle = listItem[i];
                    EidModle.Id = Guid.NewGuid();
                    EidModle.CreateMan = UserData.UserName;
                    EidModle.CreateManId = UserData.Id;
                    EidModle.CreateTime = DateTime.Now;
                    EidModle.isDeleted = false;
                    EidModle.States = 0;
                    OPBiz.Add(EidModle);
                }
            }

            try
            {


                ReSultMode.Code = 11;
                ReSultMode.Data = "";
                ReSultMode.Msg = "成功添加" + listItem.Count + "条";
            }
            catch (Exception e)
            {

                ReSultMode.Code = -11;
                ReSultMode.Data = e.ToString();
                ReSultMode.Msg = "添加失败";
            }




            return Json(ReSultMode, JsonRequestBehavior.AllowGet);

        }


        public JsonResult GetInfo(string ID)
        {
            var mql2 = TF_PersonnelFile_ConsultSet.SelectAll().Where(TF_PersonnelFile_ConsultSet.Id.Equal(ID));
            TF_PersonnelFile_Consult Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }


        public JsonResult Del(string IDSet)
        {

            int f = OPBiz.DelForSetDelete("Id", IDSet);
            HttpReSultMode ReSultMode = new HttpReSultMode();
            if (f > 0)
            {
                ReSultMode.Code = 11;
                ReSultMode.Data = f.ToString();
                ReSultMode.Msg = "成功删除" + f + "条数据！";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
            else
            {
                ReSultMode.Code = -13;
                ReSultMode.Data = "0";
                ReSultMode.Msg = "删除失败！";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
        }

        /// <summary>
        /// 所有档案
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        ///   [HttpPost]
        public JsonResult PersonnelFile()
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 1000 : int.Parse(Request["rows"]);
            string Where = Request["sqlSet"] == null ? "1=1" : GetSql(Request["sqlSet"]);
            Where += "  and (isDeleted=0) ";
            string table = "TF_PersonnelFile";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = table;
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();

            // var mql = TF_PersonnelFileSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }
    }
}
