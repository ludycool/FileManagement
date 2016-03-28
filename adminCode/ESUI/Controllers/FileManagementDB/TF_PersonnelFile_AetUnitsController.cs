
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
   /// <summary>
   /// 单位 设置 可转入，转出的材料
   /// </summary>
    public class TF_PersonnelFile_AetUnitsController : JsonNetController
    {
        [Dependency]
        public TF_PersonnelFileBiz OPBiz { get; set; }
         [Dependency]
        public TF_PersonnelFile_Units_InBiz inOPBiz { get; set; }
         [Dependency]
        public TF_PersonnelFile_Units_OutBiz outOPBiz { get; set; }
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
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_UnitsSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        #region  档案设置 单位转入
        public ActionResult SetUnitsIn(Guid Id)
        {
            ViewBag.RuteUrl = RuteUrl();
            string Script = "var Id='" + Id+"'";
            ViewBag.Script = Script;
            return View();
        }
        /// <summary>
        /// 已经添加的
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult GetUnitsIn(string Id)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 1000 : int.Parse(Request["rows"]);
            string Where = "  UnitsId='" + Id + "'";

            Where += " and (isDeleted=0) ";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "v_TF_PersonnelFile_Units_In";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();

            // var mql = TF_PersonnelFileSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// 未添加的
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult GetUnitsNotIn(string Id)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 1000 : int.Parse(Request["rows"]);
            string Where = " Id not in(select PersonnelFileId from TF_PersonnelFile_Units_In where UnitsId='" + Id + "')";

            Where += " and (isDeleted=0) ";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "TF_PersonnelFile";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();

            // var mql = TF_PersonnelFileSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// //添加转入单位
        /// </summary>
        /// <param name="btnId"></param>
        /// <param name="ManuId"></param>
        /// <returns></returns>
        public JsonResult AddUnitsIn(string UnitsId, string PersonnelFileId)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            var mql2 = TF_PersonnelFile_Units_InSet.SelectAll().Where(TF_PersonnelFile_Units_InSet.UnitsId.Equal(UnitsId).And(TF_PersonnelFile_Units_InSet.PersonnelFileId.Equal(PersonnelFileId)));
            TF_PersonnelFile_Units_In item = inOPBiz.GetEntity(mql2);
            if (item != null)
            {
                ReSultMode.Code = 11;
                ReSultMode.Data ="";
                ReSultMode.Msg = "添加转入单位";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
            item = new TF_PersonnelFile_Units_In();
            item.Id = Guid.NewGuid();
            item.UnitsId = Guid.Parse(UnitsId);
            item.PersonnelFileId = Guid.Parse(PersonnelFileId);
            inOPBiz.Add(item);
            ReSultMode.Code = 11;
            ReSultMode.Data = item.Id.ToString(); ;
            ReSultMode.Msg = "添加转入单位成功";
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);

        }
        /// <summary>
        /// //删除
        /// </summary>
        /// <param name="btnId"></param>
        /// <param name="ManuId"></param>
        /// <returns></returns>
        public JsonResult DelUnitsIn(string IdSet, string UnitsId)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            string[] ids = IdSet.Split(',');
            var mql2 = TF_PersonnelFile_Units_InSet.PersonnelFileId.In(ids).And(TF_PersonnelFile_Units_InSet.UnitsId.Equal(UnitsId));
            int f = inOPBiz.Remove<TF_PersonnelFile_Units_InSet>(mql2);
            ReSultMode.Code = 11;
            ReSultMode.Data = f.ToString();
            ReSultMode.Msg = "成功删除" + f + "条数据！";
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region 档案设置 单位转出
        public ActionResult SetUnitsOut(Guid Id)
        {
            ViewBag.RuteUrl = RuteUrl();
            string Script = "var Id='" + Id + "'";
            ViewBag.Script = Script;
            return View();
        }
        /// <summary>
        /// 已经添加的
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult GetUnitsOut(string Id)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 1000 : int.Parse(Request["rows"]);
            string Where = "  UnitsId='" + Id + "'";

            Where += " and (isDeleted=0) ";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "v_TF_PersonnelFile_Units_Out";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();

            // var mql = TF_PersonnelFileSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// 未添加的
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult GetUnitsNotOut(string Id)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 1000 : int.Parse(Request["rows"]);
            string Where = " Id not in(select PersonnelFileId from TF_PersonnelFile_Units_Out where UnitsId='" + Id + "')";

            Where += " and (isDeleted=0) ";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "TF_PersonnelFile";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();

            // var mql = TF_PersonnelFileSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// //添加转出单位
        /// </summary>
        /// <param name="btnId"></param>
        /// <param name="ManuId"></param>
        /// <returns></returns>
        public JsonResult AddUnitsOut(string UnitsId, string PersonnelFileId)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            var mql2 = TF_PersonnelFile_Units_OutSet.SelectAll().Where(TF_PersonnelFile_Units_OutSet.UnitsId.Equal(UnitsId).And(TF_PersonnelFile_Units_OutSet.PersonnelFileId.Equal(PersonnelFileId)));
            TF_PersonnelFile_Units_Out item = outOPBiz.GetEntity(mql2);
            if (item != null)
            {
                ReSultMode.Code = 11;
                ReSultMode.Data = "";
                ReSultMode.Msg = "添加转出单位成功";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
            item = new TF_PersonnelFile_Units_Out();
            item.Id = Guid.NewGuid();
            item.UnitsId = Guid.Parse(UnitsId);
            item.PersonnelFileId = Guid.Parse(PersonnelFileId);
            inOPBiz.Add(item);
            ReSultMode.Code = 11;
            ReSultMode.Data = item.Id.ToString(); ;
            ReSultMode.Msg = "添加转出单位成功";
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);

        }
        /// <summary>
        /// //删除
        /// </summary>
        /// <param name="btnId"></param>
        /// <param name="ManuId"></param>
        /// <returns></returns>
        public JsonResult DelUnitsOut(string IdSet, string UnitsId)
        {
            HttpReSultMode ReSultMode = new HttpReSultMode();
            string[] ids = IdSet.Split(',');
            var mql2 = TF_PersonnelFile_Units_OutSet.PersonnelFileId.In(ids).And(TF_PersonnelFile_Units_OutSet.UnitsId.Equal(UnitsId));
            int f = outOPBiz.Remove<TF_PersonnelFile_Units_OutSet>(mql2);
            ReSultMode.Code = 11;
            ReSultMode.Data = f.ToString();
            ReSultMode.Msg = "成功删除" + f + "条数据！";
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);
        }

        #endregion


        #region  单位


        #endregion


    }
}
