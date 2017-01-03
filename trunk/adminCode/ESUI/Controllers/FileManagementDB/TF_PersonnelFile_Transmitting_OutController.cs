
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
    public class TF_PersonnelFile_Transmitting_OutController : JsonNetController
    {

        [Dependency]
        public TF_PersonnelFile_Transmitting_OutBiz OPBiz { get; set; }


         [Dependency]
        public TF_PersonnelFile_Transmitting_Out_ItemBiz OPItemBiz { get; set; }
        public ActionResult Index()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }
        public ActionResult OutUserListResult()
        {
            ViewBag.RuteUrl = RuteUrl();
            ViewBag.toolbar = toolbar();
            return View();
        }
        public ActionResult Edit()
        {
            ViewBag.id = Request["Id"] + "";
            ViewBag.RuteUrl = RuteUrl();
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
            pc.sys_Table = "v_TF_PersonnelFile_Transmitting_Out";
//            if (UserData.UserTypes == 1)
//            {
                pc.sys_Where = Where;
//            }
//            else
//            {
//                pc.sys_Where = Where + " and   CreateMan='" + UserData.UserName + "'";
//            }
            //pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_PersonnelFile_Transmitting_OutSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult UserSearch()
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
            pc.sys_Table = "v_TF_PersonnelFile_Transmitting_Out";
            pc.sys_Where = Where + " and   DepartmentId='" + UserData.DepartmentId + "'";
            //pc.sys_Where = Where;
            pc.sys_Order = " " + sortField + " " + sortOrder;
            DataSet ds = OPBiz.GetPagingDataP(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_PersonnelFile_Transmitting_OutSet.Id.NotEqual("");
            dic.Add("rows", ds.Tables[0]);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        public JsonResult EditInfo(TF_PersonnelFile_Transmitting_Out EidModle)
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
                        List<TF_PersonnelFile_Transmitting_Out_Item> listItem=JsonHelper.JSONToList<TF_PersonnelFile_Transmitting_Out_Item>(EidModle.FistName);
                        int OriginalCount=0;
                          int DuplicateCount=0;
                          int MaterialCount=0;


                        if(listItem!=null&&listItem.Count>0)
                        {
                            EidModle.FistName=listItem[0].RealName;

                            for(int i=0;i<listItem.Count;i++)
                            {
                            OriginalCount+=listItem[i].OriginalCount;
                            DuplicateCount+=listItem[i].DuplicateCount;
                            MaterialCount+=listItem[i].MaterialCount;//统计数
                            listItem[i].Id = Guid.NewGuid();;
                            listItem[i].OwnerId=EidModle.Id ;
                           OPItemBiz.Add(listItem[i]);//添加项

                            }
                            EidModle.OriginalCount=OriginalCount;
                            EidModle.DuplicateCount=DuplicateCount;
                            EidModle.MaterialCount=MaterialCount;
                            EidModle.NumberS=listItem.Count;

                        }



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
                    EidModle.WhereExpression = TF_PersonnelFile_Transmitting_OutSet.Id.Equal(EidModle.Id);
                    List<TF_PersonnelFile_Transmitting_Out_Item> listItem = JsonHelper.JSONToList<TF_PersonnelFile_Transmitting_Out_Item>(EidModle.FistName);
                    EidModle.FistName = listItem[0].RealName;
                    EidModle.TransmittingMan = UserData.UserName;
                    EidModle.TransmittingTime = DateTime.Now;
                    // EidModle.ChangedMap.Remove("id");//移除主键值
                    if (OPBiz.Update(EidModle) > 0)
                    {
                        int OriginalCount = 0;
                        int DuplicateCount = 0;
                        int MaterialCount = 0;


                        if (listItem != null && listItem.Count > 0)
                        {
                            EidModle.FistName = listItem[0].RealName;

                            for (int i = 0; i < listItem.Count; i++)
                            {
                                //                                OriginalCount += listItem[i].OriginalCount;
                                //                                DuplicateCount += listItem[i].DuplicateCount;
                                //                                MaterialCount += listItem[i].MaterialCount;//统计数
                                //                                listItem[i].Id = listItem[i].Id; ;
                                //                                listItem[i].OwnerId = EidModle.Id;
                                listItem[i].WhereExpression = TF_PersonnelFile_Transmitting_Out_ItemSet.Id.Equal(listItem[i].Id);
                                OPItemBiz.Update(listItem[i]);//添加项

                            }


                        }

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
        public JsonResult AdminEditInfo(TF_PersonnelFile_Transmitting_Out EidModle)
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
                    List<TF_PersonnelFile_Transmitting_Out_Item> listItem = JsonHelper.JSONToList<TF_PersonnelFile_Transmitting_Out_Item>(EidModle.FistName);
                    int OriginalCount = 0;
                    int DuplicateCount = 0;
                    int MaterialCount = 0;


                    if (listItem != null && listItem.Count > 0)
                    {
                        EidModle.FistName = listItem[0].RealName;

                        for (int i = 0; i < listItem.Count; i++)
                        {
                            OriginalCount += listItem[i].OriginalCount;
                            DuplicateCount += listItem[i].DuplicateCount;
                            MaterialCount += listItem[i].MaterialCount;//统计数
                            listItem[i].Id = Guid.NewGuid(); ;
                            listItem[i].OwnerId = EidModle.Id;
                            OPItemBiz.Add(listItem[i]);//添加项

                        }
                        EidModle.OriginalCount = OriginalCount;
                        EidModle.DuplicateCount = DuplicateCount;
                        EidModle.MaterialCount = MaterialCount;
                        EidModle.NumberS = listItem.Count;

                    }



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
                EidModle.WhereExpression = TF_PersonnelFile_Transmitting_OutSet.Id.Equal(EidModle.Id);
                List<TF_PersonnelFile_Transmitting_Out_Item> listItem = JsonHelper.JSONToList<TF_PersonnelFile_Transmitting_Out_Item>(EidModle.FistName);
                EidModle.FistName = listItem[0].RealName;
//                EidModle.TransmittingMan = UserData.UserName;
                EidModle.TransmittingTime = DateTime.Now;
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
            var mql2 = TF_PersonnelFile_Transmitting_OutSet.SelectAll().Where(TF_PersonnelFile_Transmitting_OutSet.Id.Equal(ID));
            TF_PersonnelFile_Transmitting_Out Rmodel = OPBiz.GetEntity(mql2);
            var mql3 = TF_PersonnelFile_Transmitting_Out_ItemSet.SelectAll().Where(TF_PersonnelFile_Transmitting_Out_ItemSet.OwnerId.Equal(ID));
            var ItemBlist = OPItemBiz.GetEntities(mql3);
            var df = new { inmode = Rmodel, InItem = ItemBlist };
            //  groupsBiz.Add(rol);
            return Json(df, JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// 获取项
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public JsonResult GetListItems(string ID)
        {
            var mql2 = TF_PersonnelFile_Transmitting_Out_ItemSet.SelectAll().Where(TF_PersonnelFile_Transmitting_Out_ItemSet.OwnerId.Equal(ID));
           List<TF_PersonnelFile_Transmitting_Out_Item> listItem = OPBiz.GetOwnList<TF_PersonnelFile_Transmitting_Out_Item>(mql2);
            //  groupsBiz.Add(rol);
           return Json(listItem, JsonRequestBehavior.AllowGet);
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
        /// 单位可用
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        ///   [HttpPost]
        public JsonResult PersonnelFile_Units()
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 1000 : int.Parse(Request["rows"]);
            string Where = Request["sqlSet"] == null ? "1=1" : GetSql(Request["sqlSet"]);
            Where += "  and (isDeleted=0) ";
            string table = "TF_PersonnelFile";
            if (UserData.UserTypes != 1)
            {
                Where += " and ( UnitsId='" + UserData.DepartmentId + "')";
                table = "v_TF_PersonnelFile_Units_Out";
            }
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
        public JsonResult ChangeSignChangeSignadmin(string IDSet)
        {
            //int f
            //=0;

            var catmodle = OPBiz.GetEntity(TF_PersonnelFile_Transmitting_OutSet.SelectAll().Where(TF_PersonnelFile_Transmitting_OutSet.Id.Equal(IDSet)));
            catmodle.States = 1;
            catmodle.WhereExpression = TF_PersonnelFile_Transmitting_OutSet.Id.Equal(IDSet);

            var f = OPBiz.Update(catmodle);
            HttpReSultMode ReSultMode = new HttpReSultMode();
            if (f > 0)
            {
                ReSultMode.Code = 11;
                ReSultMode.Data = f.ToString();
                ReSultMode.Msg = "提交成功！";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
            else
            {
                ReSultMode.Code = -13;
                ReSultMode.Data = "0";
                ReSultMode.Msg = "提交失败！";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }
        }
        public FileContentResult GetImage(string id)
        {
            var df = TF_PersonnelFile_Transmitting_OutSet.SelectAll().Where(TF_PersonnelFile_Transmitting_OutSet.Id.Equal(id));
            var dfw = OPBiz.GetEntity(df);


            if (dfw != null)
            {

                return File(dfw.signatureimage, "jpg");

            }
            else
            {

                return null;

            }

        }
     
    }
}
