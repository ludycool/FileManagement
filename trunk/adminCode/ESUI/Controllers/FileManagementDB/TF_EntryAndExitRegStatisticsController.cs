using System;
using System.Collections.Generic;
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
using e3net.Mode;


namespace ESUI.Controllers.FileManagementDB
{
    public class TF_EntryAndExitRegStatisticsController : BaseController
    {
        [Dependency]
        public TF_EntryAndExitRegistrationBiz OPBiz { get; set; }
        [Dependency]
        public File_ImageBiz imgBiz { get; set; }
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

            Where += " and IsDeleted='false'";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "TF_EntryAndExitRegistration";
            if (UserData.UserTypes == 1)
            {
                pc.sys_Where = Where;
            }
            else
            {
                pc.sys_Where = Where + " and CreateMan='" + UserData.UserName + "'";
            }

            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<TF_EntryAndExitRegistration> list2 = OPBiz.GetPagingData<TF_EntryAndExitRegistration>(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_EntryAndExitRegistrationSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Approve(string ID, string state = "-1")
        {//ApprovalStates 状态（-1;--未提交；0--待审核；1--审核通过；2--审核不通过）
            string sql = string.Format("update TF_EntryAndExitRegistration set ApprovalStates={0},AprovalTime=getdate() Where Id='{1}'", state, ID);
            int f = OPBiz.ExecuteSqlWithNonQuery(sql);
            HttpReSultMode ReSultMode = new HttpReSultMode();
            if (f > 0)
            {
                ReSultMode.Code = 11;
                ReSultMode.Data = f.ToString();
                if (state == "0")
                {
                    ReSultMode.Msg = "审核成功！";
                }
                else
                {
                    ReSultMode.Msg = "审核提交成功！";
                }
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
            else
            {
                ReSultMode.Code = -13;
                ReSultMode.Data = "0";
                if (state == "0")
                {
                    ReSultMode.Msg = "审核提交失败！";
                }
                else
                {
                    ReSultMode.Msg = "审核失败！";
                }
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
        }

        //证件审核
        public JsonResult Approval()
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            //string Where = Request["sqlSet"] == null ? "1=1" : SelectWhere.selectwherestring(Request["sqlSet"]);
            string Where = Request["sqlSet"] == null ? "1=1" : GetSql(Request["sqlSet"]);

            Where += " and IsDeleted='false'";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "TF_EntryAndExitRegistration";
            if (UserData.UserTypes == 1)
            {
                pc.sys_Where = Where;
            }
            else
            {
                pc.sys_Where = Where + " and CreateMan='" + UserData.UserName + "'";
            }

            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<TF_EntryAndExitRegistration> list2 = OPBiz.GetPagingData<TF_EntryAndExitRegistration>(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_EntryAndExitRegistrationSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(TF_EntryAndExitRegistration EidModle)
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
                EidModle.ApprovalStates = -1;

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
                EidModle.WhereExpression = TF_EntryAndExitRegistrationSet.Id.Equal(EidModle.Id);
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
            var mql2 = TF_EntryAndExitRegistrationSet.SelectAll().Where(TF_EntryAndExitRegistrationSet.Id.Equal(ID));
            TF_EntryAndExitRegistration Rmodel = OPBiz.GetEntity(mql2);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }

        public FileResult GetFileInfo(string ID)
        {
            string TFPaperFileid = Request["id"];

            var mql2 = File_ImageSet.SelectAll().Where(File_ImageSet.ToId.Equal(TFPaperFileid));

            var f = imgBiz.GetEntity(mql2);
            var dd = Server.MapPath("~" + f.FullRoute);

            return File(dd, "1", Url.Encode(f.FileName));
            //  groupsBiz.Add(rol);
            // return File(dd, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", string.Format("{0}.doc", f.FileName));
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

    }
}