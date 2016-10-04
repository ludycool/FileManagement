using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using System.Data.Common;
using e3net.common.SysMode;
using e3net.Mode.FileManagementDB;
using e3net.Mode.HttpView;
using e3net.BLL;
using e3net.Mode;

using Microsoft.Practices.Unity;
using Newtonsoft.Json;

namespace ESUI.Controllers.FileManagementDB
{
    public class TF_LiftApproveController : BaseController
    {
        [Dependency]
        public TF_LifeCommentsBiz OPBiz { get; set; }
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

            Where += " and (isDeleted=0) ";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "TF_LifeComments";
            pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<TF_LifeComments> list2 = OPBiz.GetPagingData<TF_LifeComments>(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_LifeCommentsSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditInfo(TF_LifeComments EidModle)
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
                EidModle.WhereExpression = TF_LifeCommentsSet.Id.Equal(EidModle.Id);
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

        public ActionResult EditWebOffice()
        {
            ViewBag.ViewBag = Request["id"];


            ViewBag.RuteUrl = RuteUrl();
            return View();
        }

        public JsonResult GetInfo(string ID)
        {
            var mql2 = TF_LifeCommentsSet.SelectAll().Where(TF_LifeCommentsSet.Id.Equal(ID));
            TF_LifeComments Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetLifeFiles(string id)
        {
            var mql = File_ImageSet.SelectAll().Where(File_ImageSet.ToId.Equal(id));
            List<File_Image> list = new File_ImageBiz().GetOwnList(mql);
            return Json(list, JsonRequestBehavior.AllowGet);
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
