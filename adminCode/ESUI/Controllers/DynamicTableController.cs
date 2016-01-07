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
using e3net.tools;
using Microsoft.Practices.Unity;
using Newtonsoft.Json;
using TZHSWEET.Common;

namespace ESUI.Controllers
{
    public class DynamicTableController : JsonNetController
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

                OPBiz.ExecuteSqlWithNonQuery("alter table " + catmodle.UserTableName + " add " + categoryTable.field + " nvarchar(500) null");
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

         string menus = " [[\n";
         //var sql = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(Condition).And(ColumnChartsSet.ParentId.Contains("").Or(ColumnChartsSet.ParentId.IsNull())));
         //   List<ColumnCharts> list = CCBiz.GetOwnList<ColumnCharts>(sql);
         var list = CCBiz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + Condition + "' and (ParentId='' or ParentId is  null) and IsEnable=1 ORDER BY  SortNo");
         var list2 = CCBiz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + Condition + "' and (ParentId<>'') and IsEnable=1 ORDER BY  SortNo");
            if (list != null)
            {
                menus += "{  ";

                menus += "title:\"名称\",field:\"ID\", width: 100,hidden:true";
                menus += "},";
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
                            menus += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:\"" + item.rowspan + "\", width:\"" + item.width + "\",editor:{" + item.editor + "}";
                        }
                        else
                        {
                            menus += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" + item.width + "\",editor:{" + item.editor + "}";
                        }

                     
                        menus += "},";
                    }
                   
                }

            }

            menus = menus.Substring(0, menus.Length - 1);
            menus = menus + "]";
            if (list2 != null && list2.Count>0)
            {
                string menus2 = " ,[\n";
                foreach (ColumnCharts item in list2)
                {
                    if (item.MergeHeader == true)
                    {
                        menus2 += "{  ";

                        menus2+= "title:\"" + item.title + "\",colspan:" + item.colspan + "";
                        menus2 += "},";
                    }
                    else
                    {
                        menus2 += "{  ";
                        if (item.rowspan > 1)
                        {
                            menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:" + item.rowspan + ", width:\"" + item.width + "\",editor:{" + item.editor + "}";
                        }
                        else
                        {
                            menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" + item.width + "\",editor:{" + item.editor + "}";
                        }


                        menus2 += "},";
                    }

                }
                menus2 = menus2.Substring(0, menus2.Length - 1);
                menus2 = menus2 + "]";
                menus = menus + menus2;
                menus = menus + "]";
            }
            else
            {
                menus = menus + "]"; 
            }

            return menus;

        }

        public JsonResult GetInfoParent(string ID)
        {
          //  var mql2 = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(ID).And(ColumnChartsSet.ParentId.IsNullOrEmpty()));
         //   var Rmodel = CCBiz.GetEntities(mql2);
            var Rmodel = CCBiz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + ID + "' and (ParentId='' or ParentId is  null)");
            List<ComboxModle> list=new List<ComboxModle>();
            ComboxModle d2 = new ComboxModle();
            d2.id = "";
            d2.text = "";
            list.Add(d2);
            foreach (var columnChart in Rmodel)
            {
                ComboxModle d = new ComboxModle();
                d.id = columnChart.ID;
                d.text = columnChart.title;
                list.Add(d);
            }
            
            //  groupsBiz.Add(rol);
            return Json(list, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetColumnInfo(string ID)
        {
            var mql2 = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.ID.Equal(ID));
            ColumnCharts Rmodel = CCBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult GetAllJsonResultList(string Condition)
        {

           var modle= OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(Condition)));

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
            pc.sys_Table = modle.UserTableName;
            pc.sys_Where = "1=1";
            pc.sys_Order = "ID";

            var list2 = OPBiz.ExecuteProToDataSetNew("sp_PaginationEx", pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = RMS_ButtonsSet.Id.NotEqual("");
            dic.Add("rows", list2.Tables[0]);
            dic.Add("total", pc.RCount);

            return Json(dic);
        }


        public ActionResult IndexDynamicColumn()
        {
            string id = Request.QueryString["ID"];
            ViewBag.RuteUrl = id;
            return View();
        }
        public JsonResult ColumnSave(string categoryTable)
        {
            // ColumnCharts categoryTable=new ColumnCharts();
            bool IsAdd = false;
            //if (categoryTable != null && string.IsNullOrEmpty(categoryTable.ID))//id为空，是添加
            //{
            //    IsAdd = true;
            //}


            //if (CCBiz.GetCount<ColumnChartsSet>(ColumnChartsSet.CategoryTableID.Equal(categoryTable.CategoryTableID).And(ColumnChartsSet.field.Equal(categoryTable.field))) > 0.0)
            //{
            //    return Json("Nok", JsonRequestBehavior.AllowGet);
            //}

            if (IsAdd)
            {
                //categoryTable.ID = Guid.NewGuid().ToString();
                ////categoryTable.TableName_ = DateTime.Now;
                ////categoryTable.TableProperties = DateTime.Now;
                ////rol.RoleDescription = RMS_ButtonsModle.RoleDescription;
                ////rol.RoleOrder = RMS_ButtonsModle.RoleOrder;

                //CCBiz.Add(categoryTable);



                //var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(categoryTable.CategoryTableID)));

                //OPBiz.ExecuteSqlWithNonQuery("alter table " + catmodle.UserTableName + " add " + categoryTable.field + " nvarchar(500) null");
                return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                //categoryTable.WhereExpression = ColumnChartsSet.ID.Equal(categoryTable.ID);
                ////  spmodel.GroupId = GroupId;
                //if (CCBiz.Update(categoryTable) > 0)
                //{
                //    return Json("ok", JsonRequestBehavior.AllowGet);
                //}
                //else
                //{
                    return Json("Nok", JsonRequestBehavior.AllowGet);
               // }
            }




        }
    }
}
