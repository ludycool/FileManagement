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

namespace ESUI.Controllers
{
    //[Export]
    public class TF_PaperFileController : JsonNetController
    {

        [Dependency]
        public TF_PaperFileBiz OPBiz { get; set; }
        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
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
            pc.sys_Table = "TF_PaperFile";
            if (UserData.UserTypes == 1)
            {
                pc.sys_Where = Where;
            }
            else
            {
                pc.sys_Where = Where + " and CreateMan='" + UserData.UserName + "'";
            }
            pc.sys_Order = " " + sortField + " " + sortOrder;
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_PaperFileSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(TF_PaperFile EidModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;

            EidModle.UpdateTime = DateTime.Now;
            if (!(EidModle.Id != null && !EidModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                EidModle.Id = Guid.NewGuid();
                EidModle.CreateMan = UserData.UserName;
                EidModle.CreateTime = DateTime.Now;
                EidModle.isValid = true;
                EidModle.isDeleted = false;
                EidModle.States = 0;
                try
                {
                    OPBiz.Add(EidModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = EidModle.Id.ToString();
                    ReSultMode.Msg = "添加成功";
                    SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.新增, "纸质文件--新增", true, WebClientIP, "纸质文件");
                }
                catch (Exception e)
                {

                    ReSultMode.Code = -11;
                    ReSultMode.Data = e.ToString();
                    ReSultMode.Msg = "添加失败";
                    SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.新增, "纸质文件--新增", false, WebClientIP, "纸质文件");
                }

            }
            else
            {
                EidModle.WhereExpression = TF_PaperFileSet.Id.Equal(EidModle.Id);
                // EidModle.ChangedMap.Remove("id");//移除主键值
                if (OPBiz.Update(EidModle) > 0)
                {
                    ReSultMode.Code = 11;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "修改成功";
                    SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.修改, "纸质文件--修改", true, WebClientIP, "纸质文件");
                }
                else
                {
                    ReSultMode.Code = -13;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "修改失败";
                    SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.修改, "纸质文件--修改", false, WebClientIP, "纸质文件");
                }
            }


            return Json(ReSultMode, JsonRequestBehavior.AllowGet);

        }
        public JsonResult GetInfo(string ID)
        {
            var mql2 = TF_PaperFileSet.SelectAll().Where(TF_PaperFileSet.Id.Equal(ID));
            TF_PaperFile Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }

        public ActionResult WebOfficeDoc()//JsonResult WebOfficeDoc(string ID)
        {
            //var mql2 = TF_PaperFileSet.SelectAll().Where(TF_PaperFileSet.Id.Equal(ID));
            //TF_PaperFile Rmodel = OPBiz.GetEntity(mql2);
            ////  groupsBiz.Add(rol);
            //return Json(Rmodel, JsonRequestBehavior.AllowGet);
            string TFPaperFileid = Request["id"];
            ViewBag.RuteUrl = RuteUrl();
            return View();
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
                SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.删除, "纸质文件--删除", true, WebClientIP, "纸质文件");
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
            else
            {
                ReSultMode.Code = -13;
                ReSultMode.Data = "0";
                ReSultMode.Msg = "删除失败！";
                SysOperateLogBiz.AddSysOperateLog(UserData.Id.ToString(), UserData.UserName, e3net.Mode.OperatEnumName.删除, "纸质文件--删除", true, WebClientIP, "纸质文件");
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
        }
    }
}
