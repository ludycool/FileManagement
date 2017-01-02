
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
using e3net.Mode;

namespace ESUI.Controllers
{
    //[Export]
    public class TF_LifeCommentsController : BaseController
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

            Where += " and (isDeleted=0)";
            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "v_TF_LeftComments";
            if (UserData.UserTypes == 1)
            {
                pc.sys_Where = Where;
            }
            else
            {
                pc.sys_Where = Where + " and CreateMan='" + UserData.UserName + "'";
            }
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
                EidModle.States = -1;
                try
                {
                    OPBiz.Add(EidModle);

                    ReSultMode.Code = 11;
                    ReSultMode.Data = EidModle.Id.ToString();
                    ReSultMode.Msg = "保存成功，请尽快提交审核！";
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
                    ReSultMode.Msg = "保存成功，请尽快提交审核！";
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

        public ActionResult LifeWebOfficeDoc()
        {
            ViewBag.ViewBag = Request["id"];


            ViewBag.RuteUrl = RuteUrl();
            return View();
        }

        private bool HasLifeFiles(string id)
        {
            var mql = File_ImageSet.SelectAll().Where(File_ImageSet.ToId.Equal(id));
            List<File_Image> list = new File_ImageBiz().GetOwnList(mql);
            if (list!=null&&list.Count>0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public JsonResult GetLifeFiles(string id)
        {
            var mql = File_ImageSet.SelectAll().Where(File_ImageSet.ToId.Equal(id));
            List<File_Image> list = new File_ImageBiz().GetOwnList(mql);
            return Json(list, JsonRequestBehavior.AllowGet);
        }

        public JsonResult Approve(string ID, string state = "-1")
        {//States 状态（已审核--2、审核中--1，已提交--0，编辑中--1）
            string sql = string.Format("update TF_LifeComments set States={0} Where Id='{1}'", state, ID);
            int f = OPBiz.ExecuteSqlWithNonQuery(sql);
            HttpReSultMode ReSultMode = new HttpReSultMode();
            if (f > 0)
            {
                ReSultMode.Code = 11;
                ReSultMode.Data = f.ToString();
                ReSultMode.Msg = "提交审核成功！";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
            else
            {
                ReSultMode.Code = -13;
                ReSultMode.Data = "0";
                ReSultMode.Msg = "提交审核失败！";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
        }


        public JsonResult GetInfo(string ID)
        {
            var mql2 = TF_LifeCommentsSet.SelectAll().Where(TF_LifeCommentsSet.Id.Equal(ID));
            TF_LifeComments Rmodel = OPBiz.GetEntity(mql2);
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
