using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Practices.Unity;
using Newtonsoft.Json;

using System.Data.Common;
using e3net.common.SysMode;
using e3net.Mode.HttpView;
using e3net.BLL;
using e3net.Mode;


namespace ESUI.Controllers
{
    public class SysOperateLogController : BaseController
    {
        [Dependency]
        public SysOperateLogBiz OPBiz { get; set; }

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
            pc.sys_Table = "SysOperateLog";
            if (UserData.UserTypes == 1)
            {
                pc.sys_Where = Where;
            }
            //else
            //{
            //    pc.sys_Where = Where + " and CreateMan='" + UserData.UserName + "'";
            //}

            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<SysOperateLog> list2 = OPBiz.GetPagingData<SysOperateLog>(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_EntryAndExitRegistrationSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(SysOperateLog EidModle)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            bool IsAdd = false;

            EidModle.OperateTime = DateTime.Now;
            if (!(EidModle.Id != null && !EidModle.Id.ToString().Equals("00000000-0000-0000-0000-000000000000")))//id为空，是添加
            {
                IsAdd = true;
            }
            if (IsAdd)
            {
                EidModle.Id = Guid.NewGuid();
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
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);

        }

        public JsonResult GetInfo(string ID)
        {
            var mql2 = SysOperateLogSet.SelectAll().Where(SysOperateLogSet.Id.Equal(ID));
            SysOperateLog Rmodel = OPBiz.GetEntity(mql2);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
    }
}