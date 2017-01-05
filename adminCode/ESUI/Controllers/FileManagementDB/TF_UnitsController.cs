
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
    public class TF_UnitsController : JsonNetController
    {

        [Dependency]
        public TF_UnitsBiz OPBiz { get; set; }
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
            pc.sys_Table = "TF_Units";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            //List<TF_Units> list2 = OPBiz.GetPagingData<TF_Units>(pc);
            DataSet ds= OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_UnitsSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(TF_Units EidModle)
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
                    EidModle.WhereExpression = TF_UnitsSet.Id.Equal(EidModle.Id);
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
        public JsonResult GetInfo(string ID)
        {
            var mql2 = TF_UnitsSet.SelectAll().Where(TF_UnitsSet.Id.Equal(ID));
            TF_Units Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetAllInfo()
        {
            //var sqlc2 = MainAssociationSet.SelectAll().Where(MainAssociationSet.CategoryTableID.Equal(ID));
            //var d = Mabiz.GetEntities(sqlc2);
            var f = TF_UnitsSet.SelectAll();
            var df = OPBiz.GetEntities(f);
            return Json(df, JsonRequestBehavior.AllowGet);
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

        public ActionResult PersonnelFileInput()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }

        public JsonResult inpormt(string categoryTable)
        {
            List<TF_Units> listItem = JsonHelper.JSONToList<TF_Units>(categoryTable);
            //            int f = OPBiz.DelForSetDelete("Id", IDSet);
            HttpReSultMode ReSultMode = new HttpReSultMode();
            foreach (TF_Units file in listItem)
            {
                file.Id = Guid.NewGuid();
                file.CreateMan = UserData.UserName;
                file.CreateTime = DateTime.Now;
                file.isValid = true;
                file.isDeleted = false;
                try
                {
                    OPBiz.Add(file);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = file.Id.ToString();
                    ReSultMode.Msg = "添加成功";
                }
                catch (Exception e)
                {

                    ReSultMode.Code = -11;
                    ReSultMode.Data = e.ToString();
                    ReSultMode.Msg = "添加失败";
                    break;
                }
            }
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);

        }
    }
}
