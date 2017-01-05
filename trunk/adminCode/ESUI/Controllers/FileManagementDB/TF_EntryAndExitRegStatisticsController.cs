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
        public TF_ChuRuJingStatisticsBiz OPBiz { get; set; }

        [Dependency]
        public TF_EntryAndExitRegistrationBiz OPRBiz { get; set; }

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
            string Where = " 1=1 ";
            if (Request["sqlSet"] != null)
            {
                string sqlSet = Request["sqlSet"];
                if (sqlSet.Contains("CertificateCategory"))
                {
                    string[] data = sqlSet.Split('█');
                    if (!string.IsNullOrEmpty(sqlSet))
                    {
                        for (int i = 0; i < data.Length; i++)
                        {
                            int index = data[i].IndexOf(":");
                            var nameData = data[i].Substring(0, index);

                            string[] name = nameData.Split('_');
                            string value = e3net.tools.FilterTools.FilterSpecial(data[i].Substring(index + 1));
                            if (name[0].Trim() == "CertificateCategory" && value == "1")//证件类型（1--护照；2--港澳通行证；3--台湾通行证）
                            {
                                Where += " and " + GetOP("TotalHZ", "ne", "");// " and TotalHZ>0";
                            }
                            else if (name[0].Trim() == "CertificateCategory" && value == "2")//证件类型（1--护照；2--港澳通行证；3--台湾通行证）
                            {
                                Where += " and " + GetOP("TotalGA", "ne", "");// " and TotalGA>0";
                            }
                            else if (name[0].Trim() == "CertificateCategory" && value == "3")//证件类型（1--护照；2--港澳通行证；3--台湾通行证）
                            {
                                Where += " and " + GetOP("TotalTW", "ne", "");// " and TotalTW>0";
                            }
                            else
                            {
                                Where += " and " + GetOP(name[0], name[1], value);
                            }

                        }
                    }
                }
                else
                {
                    Where += " and " + GetSql(Request["sqlSet"]);
                }
            }

            ////字段排序
            String sortField = Request["sort"];
            String sortOrder = Request["order"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "View_CRJStatistics";
            //if (UserData.UserTypes == 1)
            //{
            pc.sys_Where = Where;
            //}
            //else
            //{
            //    pc.sys_Where = Where + " and CreateMan='" + UserData.UserName + "'";
            //}

            pc.sys_Order = " " + sortField + " " + sortOrder;
            List<TF_ChuRuJingStatistics> list2 = OPBiz.GetPagingData<TF_ChuRuJingStatistics>(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = TF_EntryAndExitRegistrationSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);
            return Json(dic, JsonRequestBehavior.AllowGet);
        }

        public ActionResult CertificateDetail()
        {
            ViewData["IdCard"] = Request["idcard"];
            ViewBag.RuteUrl = RuteUrl();
            return View();
        }

        [HttpPost]
        public JsonResult LoadCertificateDetail()
        {
            string idcard = Request["Idcard"] == null ? "" : Request["Idcard"].Trim();
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "Id";
            pc.sys_PageIndex = 1;
            pc.sys_PageSize = 999999;
            pc.sys_Table = "TF_EntryAndExitRegistration";
            pc.sys_Where = string.Format(" IdentityCardNumber='{0}' and IsDeleted='false' and ApprovalStates=1", idcard);

            pc.sys_Order = " CreateTime desc";
            List<TF_EntryAndExitRegistration> list2 = OPRBiz.GetPagingData<TF_EntryAndExitRegistration>(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();
            return Json(list2, JsonRequestBehavior.AllowGet);
        }


        public JsonResult GetInfo(string ID)
        {
            var mql2 = TF_ChuRuJingStatisticsSet.SelectAll().Where(TF_ChuRuJingStatisticsSet.Id.Equal(ID));
            TF_ChuRuJingStatistics Rmodel = OPBiz.GetEntity(mql2);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }


        string GetOP(string name, string op, string values)
        {
            #region  多字段 模糊查询  如： OwnerName|OwnerCode|BuildingCode|HouseCode_like
            string[] names = name.Split('|');
            if (names.Length > 1)
            {
                string sql = "(";
                for (int i = 0; i < names.Length; i++)
                {
                    if (op.Equals("like"))
                    {
                        sql += names[i] + " like N'%" + values + "%' ";

                        if (i != names.Length - 1)
                        {
                            sql += " or ";
                        }
                    }
                }
                sql += ")";
                return sql;
            }
            #endregion


            switch (op)
            {
                case "like"://all

                    return name + " like N'%" + values + "%' ";
                case "like1":// 前固定

                    return name + " like N'" + values + "%' ";
                case "like2"://后固定

                    return name + " like N'%" + values + "' ";

                case "eq":

                    return name + " = '" + values + "' ";


                case "lt":

                    return name + " < '" + values + "' ";


                case "le":

                    return name + " <= '" + values + "' ";

                case "gt":

                    return name + " > '" + values + "' ";


                case "ge":

                    return name + " >= '" + values + "' ";


                case "ne":

                    return name + " != '" + values + "' ";
                default:
                    return "";

            }

        }
    }
}