using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Diagnostics;
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
using e3net.Mode.HttpView;

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

        [Dependency]
        public BascharvalueBiz BBiz { get; set; }
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
        /// <summary>
        /// 创建表格
        /// </summary>
        /// <param name="categoryTable"></param>
        /// <returns></returns>
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
                OPBiz.ExecuteSqlWithNonQuery("create table " + categoryTable.UserTableName + "  ( ID varchar(50) primary key)");
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
            string id = Request.QueryString["ID"];
            ViewBag.RuteUrl = id;
            return View();
        }
        /// <summary>
        /// 录入动态表头
        /// </summary>
        /// <param name="categoryTable"></param>
        /// <returns></returns>
        public JsonResult ColumnEditInfo(ColumnCharts categoryTable)
        {
            // ColumnCharts categoryTable=new ColumnCharts();
            bool IsAdd = false;
            HttpReSultMode ReSultMode = new HttpReSultMode();

            if (categoryTable != null && string.IsNullOrEmpty(categoryTable.ID))//id为空，是添加
            {
                IsAdd = true;
            }
            if (categoryTable.ISLoginsector != null && (categoryTable.ISLogpeople != null && (categoryTable.ISLoginsector.Value && categoryTable.ISLogpeople.Value)))
            {
                ReSultMode.Code = -11;
                ReSultMode.Data = "";
                ReSultMode.Msg = "不能同时启用";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }

            if (IsAdd && CCBiz.GetCount<ColumnChartsSet>(ColumnChartsSet.CategoryTableID.Equal(categoryTable.CategoryTableID).And(ColumnChartsSet.field.Equal(categoryTable.field))) > 0.0)
            {
                ReSultMode.Code = -11;
                ReSultMode.Data = "";
                ReSultMode.Msg = "存在相同的表格英文名称";
                return Json(ReSultMode, JsonRequestBehavior.AllowGet);
            }

            if (IsAdd)
            {

                if (
             CCBiz.GetCount<ColumnChartsSet>(
                 ColumnChartsSet.CategoryTableID.Equal(categoryTable.CategoryTableID)
                     .And(ColumnChartsSet.IsNumber.Equal(true)).And(ColumnChartsSet.IsEnable.Equal(true))) > 0)
                {
                    ReSultMode.Code = -11;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "已经有存在的编号列，不能再添加启用的编号列";
                }
                else
                {
                    categoryTable.ID = Guid.NewGuid().ToString();
                    //categoryTable.TableName_ = DateTime.Now;
                    //categoryTable.TableProperties = DateTime.Now;
                    //rol.RoleDescription = RMS_ButtonsModle.RoleDescription;
                    //rol.RoleOrder = RMS_ButtonsModle.RoleOrder;

                    CCBiz.Add(categoryTable);
                    var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(categoryTable.CategoryTableID)));
                    OPBiz.ExecuteSqlWithNonQuery("alter table " + catmodle.UserTableName + " add " + categoryTable.field + " nvarchar(500) null");
                    ReSultMode.Code = 11;
                    ReSultMode.Data = "";
                    ReSultMode.Msg = "添加成功";
                }

            }
            else
            {
                if (categoryTable.IsNumber != null && categoryTable.IsNumber.Value)
                {
                    if (
           CCBiz.GetCount<ColumnChartsSet>(
               ColumnChartsSet.CategoryTableID.Equal(categoryTable.CategoryTableID).And(ColumnChartsSet.CategoryTableID.NotEqual(categoryTable.ID)).And(ColumnChartsSet.IsEnable.Equal(true).And(ColumnChartsSet.IsNumber.Equal(true)))) > 0)
                    {
                        ReSultMode.Code = -11;
                        ReSultMode.Data = "";
                        ReSultMode.Msg = "已经有存在的编号列，不能再添加启用的编号列";
                        return Json(ReSultMode, JsonRequestBehavior.AllowGet);
                    }
                }
              
                
                    categoryTable.WhereExpression = ColumnChartsSet.ID.Equal(categoryTable.ID);
                    //  spmodel.GroupId = GroupId;
                    if (CCBiz.Update(categoryTable) > 0)
                    {
                        ReSultMode.Code = 11;
                        ReSultMode.Data = "";
                        ReSultMode.Msg = "更新成功";
                    }
                    else
                    {
                        ReSultMode.Code = -11;
                        ReSultMode.Data = "";
                        ReSultMode.Msg = "更新失败";
                    }
                


            }
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);

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
        /// 绘制动态表头（含多维表头）
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
                    if (item.MergeHeader == true)
                    {
                        menus += "{  ";
                        if (!string.IsNullOrEmpty(item.align))
                        {
                            menus += "title:\"" + item.title + "\",colspan:\"" + item.colspan + "\",align:\"" + item.align + "\"";
                        }
                        else
                        {
                            menus += "title:\"" + item.title + "\",colspan:\"" + item.colspan + "\"";
                        }

                        menus += "},";
                    }
                    else
                    {
                        menus += "{  ";
                        if (item.rowspan > 1)
                        {
                            if (!string.IsNullOrEmpty(item.align))
                            {
                                menus += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:\"" + item.rowspan + "\", width:\"" + item.width + "\",editor:{" + item.editor + "}" + ",align:\"" + item.align + "\"";

                            }
                            else
                            {
                                menus += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:\"" + item.rowspan + "\", width:\"" + item.width + "\",editor:{" + item.editor + "}";

                            }



                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(item.align))
                            {
                                menus += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                         item.width + "\",editor:{" + item.editor + "}" + ",align:\"" + item.align +
                                         "\"";
                            }
                            else
                            {

                                menus += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                         item.width + "\",editor:{" + item.editor + "}";
                            }
                        }


                        menus += "},";
                    }

                }

            }

            menus = menus.Substring(0, menus.Length - 1);
            menus = menus + "]";
            if (list2 != null && list2.Count > 0)
            {
                string menus2 = " ,[\n";
                foreach (ColumnCharts item in list2)
                {
                    if (item.MergeHeader == true)
                    {
                        menus += "{  ";
                        if (!string.IsNullOrEmpty(item.align))
                        {
                            menus += "title:\"" + item.title + "\",colspan:\"" + item.colspan + "\",align:\"" + item.align + "\"";
                        }
                        else
                        {
                            menus += "title:\"" + item.title + "\",colspan:\"" + item.colspan + "\"";
                        }

                        menus += "},";
                    }
                    else
                    {
                        menus2 += "{  ";
                        if (item.rowspan > 1)
                        {
                            if (!string.IsNullOrEmpty(item.align))
                            {
                                menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:" +
                                          item.rowspan + ", width:\"" + item.width + "\",editor:{" + item.editor + "}" + ",align:\"" + item.align + "\"";
                            }
                            else
                            {
                                menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:" +
                                         item.rowspan + ", width:\"" + item.width + "\",editor:{" + item.editor + "}";
                            }
                        }
                        else
                        {
                            if (!string.IsNullOrEmpty(item.align))
                            {
                                menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" + item.width + "\",editor:{" + item.editor + "}" + ",align:\"" + item.align + "\"";
                            }
                            else
                            {
                                menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" + item.width + "\",editor:{" + item.editor + "}";

                            }
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
        /// <summary>
        /// 设查找没有子级的
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public JsonResult GetInfoParent(string ID)
        {
            //  var mql2 = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(ID).And(ColumnChartsSet.ParentId.IsNullOrEmpty()));
            //   var Rmodel = CCBiz.GetEntities(mql2);
            var Rmodel = CCBiz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + ID + "' and MergeHeader=1");
            List<ComboxModle> list = new List<ComboxModle>();
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
        /// <summary>
        /// 获取实体类
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public JsonResult GetColumnInfo(string ID)
        {
            var mql2 = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.ID.Equal(ID));
            ColumnCharts Rmodel = CCBiz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// 查询动态表格内容
        /// </summary>
        /// <param name="Condition"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult GetAllJsonResultList(string Condition)
        {

            var modle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(Condition)));

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
        /// <summary>
        /// 动态表格添加修改方法
        /// </summary>
        /// <param name="categoryTable"></param>
        /// <param name="CategoryTableID"></param>
        /// <returns></returns>
        public JsonResult ColumnSave(string categoryTable, string CategoryTableID)
        {
            // ColumnCharts categoryTable=new ColumnCharts();
            bool IsAdd = false;

            var o2 = JsonConvert.DeserializeObject<List<Dictionary<string, string>>>(categoryTable);
            if (!o2[0].ContainsKey("ID"))
            {
                IsAdd = true;
            }


            if (IsAdd)
            {

                try
                {
                    var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(CategoryTableID)));

                    string sql = "INSERT INTO " + catmodle.UserTableName + "(ID,";

                    foreach (KeyValuePair<string, string> kv in o2[0])
                    {
                        sql += kv.Key + ",";

                    }
                    sql = sql.Substring(0, sql.Length - 1);
                    sql += ")VALUES ('" + Guid.NewGuid().ToString() + "',";

                    foreach (KeyValuePair<string, string> kv in o2[0])
                    {
                        sql += "'" + kv.Value + "',";

                    }
                    sql = sql.Substring(0, sql.Length - 1);
                    sql += ")";
                    OPBiz.ExecuteSqlWithNonQuery(sql);
                    return Json("ok", JsonRequestBehavior.AllowGet);
                }
                catch (Exception e)
                {
                    return Json("Nok", JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                try
                {
                    var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(CategoryTableID)));

                    string sql = "UPDATE " + catmodle.UserTableName + " set";

                    foreach (KeyValuePair<string, string> kv in o2[0])
                    {
                        if (kv.Key != "ID")
                        {
                            sql += "[" + kv.Key + "]='" + kv.Value + "',";
                        }


                    }
                    string updateID = "";
                    o2[0].TryGetValue("ID", out updateID);
                    sql = sql.Substring(0, sql.Length - 1);
                    sql += " where  ID='" + updateID + "'";


                    OPBiz.ExecuteSqlWithNonQuery(sql);
                    return Json("ok", JsonRequestBehavior.AllowGet);
                }
                catch (Exception e)
                {
                    return Json("Nok", JsonRequestBehavior.AllowGet);
                }



            }




        }

        public string GetNumberColumn(string Condition)
        {
            var fd = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(Condition)
                .And(ColumnChartsSet.IsNumber.Equal(true).And(ColumnChartsSet.IsEnable.Equal(true))));
            var f = CCBiz.GetEntity(fd);
            string menus = "[\n";
            menus += "{  ";
            if (f != null)
            {
                var ddd = BascharvalueSet.SelectAll().Where(BascharvalueSet.CharTypeId.Equal("Year"));
                var g = BBiz.GetEntity(ddd);
                if (g.CharName.Equals(DateTime.Today.Year.ToString()))
                {
                    int count = 0;
                    int.TryParse(g.CharNumber, out count);
                    count = count + 1;
                    menus += "\"" + f.field + "\":\"" + g.CharName + "-" + count.ToString() + "\"";
                    g.CharNumber = count.ToString();
                    g.WhereExpression = BascharvalueSet.CharId.Equal(g.CharId);
                    BBiz.Update(g);
                }
                else
                {
                    g.CharName = DateTime.Today.Year.ToString();
                    g.CharNumber = "1";
                    g.WhereExpression = BascharvalueSet.CharId.Equal(g.CharId);
                    BBiz.Update(g);
                    menus += "\"" + f.field + "\":\"" + g.CharName + "-" + g.CharNumber + "\"";
                }

            }
            else
            {
                menus = "2";
            }

            var cheakwhere = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(Condition).And(ColumnChartsSet.IsEnable.Equal(true))
                         .And(ColumnChartsSet.ISLoginsector.Equal(true).Or(ColumnChartsSet.ISLogpeople.Equal(true))));
            var cheaklist = CCBiz.GetEntities(cheakwhere);
            foreach (ColumnCharts chartse in cheaklist)
            {
                if (chartse.ISLoginsector != null && chartse.ISLoginsector.Value)
                {
                    menus += ",\"" + chartse.field + "\":\"" + "" + "\"";
                }
                else if (chartse.ISLogpeople != null && chartse.ISLogpeople.Value)
                {
                    menus += ",\"" + chartse.field + "\":\"" + "" + "\"";
                }
            }

            menus += "}]";

            return menus;

        }

    }
}
