using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DefaultConnection;
using e3net.BLL.DynamicTable;
using e3net.common.SysMode;
using e3net.Mode;
using e3net.Mode.RMS;
using Microsoft.Practices.Unity;
using Newtonsoft.Json;

namespace ESUI.Controllers
{
    public class DynamicTableController : BaseController
    {
        //
        // GET: /DynamicTable/
        [Dependency]
        public CategoryTableBiz OPBiz { get; set; }
        
        [Dependency]
        public ColumnChartsBiz CCBiz { get; set; }
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public JsonResult GetList()
        {

       

            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            ////字段排序
            //String sortField = Request["sortField"];
            //String sortOrder = Request["sortOrder"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "ID";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "CategoryTable";
            pc.sys_Where = "1=1";
            pc.sys_Order = "ID";
       
            var list2 = OPBiz.GetPagingData(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = RMS_ButtonsSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);

            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        public JsonResult EditInfo(CategoryTable categoryTable)
        {

            bool IsAdd = false;
            if (categoryTable != null && string.IsNullOrEmpty(categoryTable.ID))//id为空，是添加
            {
                IsAdd = true;
            }
            if (OPBiz.GetCount<CategoryTableSet>(CategoryTableSet.UserTableName.Equal(categoryTable.UserTableName)) > 0.0)
            {
                return Json("Nok", JsonRequestBehavior.AllowGet);
            }
           
            if (IsAdd)
            {
                categoryTable.ID = Guid.NewGuid().ToString();
                //categoryTable.TableName_ = DateTime.Now;
                //categoryTable.TableProperties = DateTime.Now;
                //rol.RoleDescription = RMS_ButtonsModle.RoleDescription;
                //rol.RoleOrder = RMS_ButtonsModle.RoleOrder;

                OPBiz.Add(categoryTable);
                OPBiz.ExecuteSqlWithNonQuery("create table " + categoryTable .UserTableName+ "  ( ID varchar(50) primary key)");
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                categoryTable.WhereExpression = CategoryTableSet.ID.Equal(categoryTable.ID);
                //  spmodel.GroupId = GroupId;
                if (OPBiz.Update(categoryTable) > 0)
                {
                    return Json("ok", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("Nok", JsonRequestBehavior.AllowGet);
                }
            }



        
        }
        public JsonResult ColumnEditInfo(ColumnCharts categoryTable)
        {
           // ColumnCharts categoryTable=new ColumnCharts();
            bool IsAdd = false;
            if (categoryTable != null && string.IsNullOrEmpty(categoryTable.ID))//id为空，是添加
            {
                IsAdd = true;
            }


            if (CCBiz.GetCount<ColumnChartsSet>(ColumnChartsSet.CategoryTableID.Equal(categoryTable.CategoryTableID).And(ColumnChartsSet.field.Equal(categoryTable.field))) > 0.0)
            {
                return Json("Nok", JsonRequestBehavior.AllowGet);
            }

            if (IsAdd)
            {
                categoryTable.ID = Guid.NewGuid().ToString();
                //categoryTable.TableName_ = DateTime.Now;
                //categoryTable.TableProperties = DateTime.Now;
                //rol.RoleDescription = RMS_ButtonsModle.RoleDescription;
                //rol.RoleOrder = RMS_ButtonsModle.RoleOrder;

                CCBiz.Add(categoryTable);


           
            var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(categoryTable.CategoryTableID)));

            OPBiz.ExecuteSqlWithNonQuery("alter table " + catmodle.UserTableName + " add " + categoryTable .field+ " nvarchar(500) null");
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                categoryTable.WhereExpression = ColumnChartsSet.ID.Equal(categoryTable.ID);
                //  spmodel.GroupId = GroupId;
                if (CCBiz.Update(categoryTable) > 0)
                {
                    return Json("ok", JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json("Nok", JsonRequestBehavior.AllowGet);
                }
            }




        }
        public JsonResult GetInfo(string ID)
        {
            var mql2 = CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(ID));
            CategoryTable Rmodel = OPBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        public ActionResult ListAdd()
        {
          string id=  Request.QueryString["ID"];
          ViewBag.RuteUrl = id;
            return View();
        }

        [HttpPost]
        public JsonResult ColumnGetList(string Condition)
        {



            //int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            //int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            //////字段排序
            ////String sortField = Request["sortField"];
            ////String sortOrder = Request["sortOrder"];
            //PageClass pc = new PageClass();
            //pc.sys_Fields = "*";
            //pc.sys_Key = "ID";
            //pc.sys_PageIndex = pageIndex;
            //pc.sys_PageSize = pageSize;
            //pc.sys_Table = "ColumnCharts";
            //pc.sys_Where = "1=1";
            //pc.sys_Order = "ID";

            //var list2 = OPBiz.GetPagingData(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();
            //var list2 = CCBiz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + Condition + "'");
           var list2 = CCBiz.GetEntities(ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(Condition)));
            // var mql = RMS_ButtonsSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", list2.Count);

            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// 获取列
        /// </summary>
        /// <returns></returns>
        public string GetBtnColumn(string Condition)
        {

         string menus = " [\n";
            var sql = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(Condition));
            List<ColumnCharts> list = CCBiz.GetOwnList<ColumnCharts>(sql);
            if (list != null)
            {
                //menus += "{  ";

                //menus += "title:\"名称\",field:\"Name\", width: 100";
                //menus += "},";
                //menus += "{  ";

                //menus += "title:\"浏览\",field:\"ControlId_Browse\", width: 30,editor:{type:'checkbox',options:{on:'1',off:'0'}}, formatter: formatCheck";
                //menus += "},";

                foreach (ColumnCharts item in list)
                {
                    if (item.MergeHeader==true)
                    {
                        menus += "{  ";

                        menus += "title:\"" + item.title + "\",colspan:\"" + item.colspan + "\"";
                        menus += "},";
                    }
                    else
                    {
                        menus += "{  ";
                        if (item.rowspan>1)
                        {
                            menus += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:\"" + item.rowspan + "\", width:\"" + item.width + "\",editor:\"{" + item.editor + "}\"";
                        }
                        else
                        {
                            menus += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" + item.width + "\",editor:\"{" + item.editor + "}\"";
                        }

                     
                        menus += "},";
                    }
                   
                }

            }

            menus = menus.Substring(0, menus.Length - 1);
            menus = menus + "]";

            return menus;

        }
    }
}
