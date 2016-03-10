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
        [Dependency]
        public BaschartypeBiz Bciz { get; set; }
        
        [Dependency]
        public BascharvalueBiz Bcviz { get; set; }  
        
        
        [Dependency]
        public MainAssociationBiz Mabiz { get; set; }   
        
        [Dependency]
        public CorrelateColumnsBiz Correlatecbiz { get; set; }    
        [Dependency]
        public VcorrelateColumnsBiz Vcbiz { get; set; }
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
            if (OPBiz.GetCount<CategoryTableSet>(CategoryTableSet.UserTableName.Equal(categoryTable.UserTableName)) > 0.0 && IsAdd)
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
                OPBiz.ExecuteSqlWithNonQuery("create table [" + categoryTable.UserTableName + "]  ( ID varchar(50) primary key,CreatName nvarchar(100) null ,CreateTime datetime null,ck nvarchar(100) null) ");
                OPBiz.ExecuteSqlWithNonQuery("INSERT INTO [ColumnCharts]      ([ID],[CategoryTableID],[field],[title],[rowspan],[width],[IsEnable]) VALUES('" + Guid.NewGuid().ToString() + "','" + categoryTable .ID+ "','ck','ck',1,100,1) ");
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
                if (categoryTable.IsNumber == true)
                {
                    if (
             CCBiz.GetCount<ColumnChartsSet>(
                 ColumnChartsSet.CategoryTableID.Equal(categoryTable.CategoryTableID)
                     .And(ColumnChartsSet.IsNumber.Equal(true)).And(ColumnChartsSet.IsEnable.Equal(true))) > 0)
                    {
                        ReSultMode.Code = -11;
                        ReSultMode.Data = "";
                        ReSultMode.Msg = "已经有存在的编号列，不能再添加启用的编号列";
                        return Json(ReSultMode, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        categoryTable.ID = Guid.NewGuid().ToString();


                        CCBiz.Add(categoryTable);
                        var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(categoryTable.CategoryTableID)));
                        OPBiz.ExecuteSqlWithNonQuery("alter table [" + catmodle.UserTableName + "] add [" + categoryTable.field + "] nvarchar(500) null");
                        ReSultMode.Code = 11;
                        ReSultMode.Data = "";
                        ReSultMode.Msg = "添加成功";  
                    }
                }


                else
                {
                    categoryTable.ID = Guid.NewGuid().ToString();


                    CCBiz.Add(categoryTable);
                    var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(categoryTable.CategoryTableID)));
                    OPBiz.ExecuteSqlWithNonQuery("alter table [" + catmodle.UserTableName + "] add [" + categoryTable.field + "] nvarchar(500) null");
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
            var list2 = CCBiz.GetEntities(ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(Condition)).OrderByASC(ColumnChartsSet.SortNo));
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
            var list3 = CCBiz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + Condition + "' and (title='ck') and IsEnable=1 ORDER BY  SortNo");
            if (list != null)
            {
                if (list3.Count>0)
                {
                    
               
                menus += "{  ";

                menus += "field:\"ck\" ,checkbox:true,rowspan:\"" + list3[0].rowspan + "\", width:\"" + list3[0].width + "\"";
                menus += "},";
                }
                menus += "{  ";

                menus += "title:\"名称\",field:\"ID\", width: 100,hidden:true";
                menus += "},";
                //menus += "{  ";

                //menus += "title:\"浏览\",field:\"ControlId_Browse\", width: 30,editor:{type:'checkbox',options:{on:'1',off:'0'}}, formatter: formatCheck";
                //menus += "},";

                foreach (ColumnCharts item in list)
                {
                    if (item.title!="ck")
                    {
                        if (item.MergeHeader == true)
                        {
                            menus += "{  ";
                            if (!string.IsNullOrEmpty(item.align))
                            {
                                menus += "title:\"" + item.title + "\",colspan:\"" + item.colspan + "\",align:\"" +
                                         item.align + "\"";
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
                                    if (item.ManagingStatus == true && UserData.UserTypes != 1)
                                    {
                                        menus += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:\"" +
                                      item.rowspan + "\", width:\"" + item.width + "\",editor:{" +
                                           "}" + ",align:\"" + item.align + "\"";
                                    }
                                    else
                                    {
                                        menus += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:\"" +
                                      item.rowspan + "\", width:\"" + item.width + "\",editor:{" + item.editor +
                                           "}" + ",align:\"" + item.align + "\"";
                                    }
                                  

                                }
                                else
                                {
                                    if (item.ManagingStatus == true && UserData.UserTypes != 1)
                                    {
                                        menus += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:\"" +
                                                 item.rowspan + "\", width:\"" + item.width + "\",editor:{" +
                                                 
                                                 "}";
                                    }
                                    else
                                    {
                                        menus += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:\"" +
                                                 item.rowspan + "\", width:\"" + item.width + "\",editor:{" +
                                                 item.editor +
                                                 "}";
                                    }

                                }



                            }
                            else
                            {
                                if (!string.IsNullOrEmpty(item.align))
                                {
                                    if (item.ManagingStatus == true && UserData.UserTypes!=1)
                                    {
                                        menus += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                           item.width + "\",editor:{" +   "}" + ",align:\"" + item.align +
                                           "\"";
                                    }
                                    else
                                    {
                                        menus += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                           item.width + "\",editor:{" + item.editor + "}" + ",align:\"" + item.align +
                                           "\"";
                                    }
                                  
                                }
                                else
                                {
                                    if (item.ManagingStatus == true && UserData.UserTypes != 1)
                                    {
                                        menus += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                                  item.width + "\",editor:{" +  "}";
                                    }
                                    else
                                    {
                                        menus += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                                 item.width + "\",editor:{" + item.editor + "}";
                                    }
                                }
                            }


                            menus += "},";
                        }
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
                    if (item.title != "ck")
                    {
                        if (item.MergeHeader == true)
                        {
                            menus += "{  ";
                            if (!string.IsNullOrEmpty(item.align))
                            {
                                menus += "title:\"" + item.title + "\",colspan:\"" + item.colspan + "\",align:\"" +
                                         item.align + "\"";
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
                                    if (item.ManagingStatus == true && UserData.UserTypes != 1)
                                    {
                                        menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:" +
                                              item.rowspan + ", width:\"" + item.width + "\",editor:{" + 
                                              "}" + ",align:\"" + item.align + "\"";
                                    }
                                    else
                                    {
                                       menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:" +
                                              item.rowspan + ", width:\"" + item.width + "\",editor:{" + item.editor +
                                              "}" + ",align:\"" + item.align + "\""; 
                                    }
                                    
                                }
                                else
                                {
                                    if (item.ManagingStatus == true && UserData.UserTypes != 1)
                                    {
                                        menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:" +
                                             item.rowspan + ", width:\"" + item.width + "\",editor:{" + 
                                             "}";
                                    }
                                    else
                                    {
                                        menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\",rowspan:" +
                                              item.rowspan + ", width:\"" + item.width + "\",editor:{" + item.editor +
                                              "}"; 
                                    }
                                   
                                }
                            }
                            else
                            {
                                if (!string.IsNullOrEmpty(item.align))
                                {
                                    if (item.ManagingStatus == true && UserData.UserTypes != 1)
                                    {
                                        menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                            item.width + "\",editor:{" + "}" + ",align:\"" + item.align +
                                            "\"";
                                    }
                                    else
                                    {
                                        menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                             item.width + "\",editor:{" + item.editor + "}" + ",align:\"" + item.align +
                                             "\""; 
                                    }  
                                  
                                }
                                else
                                {
                                    if (item.ManagingStatus == true && UserData.UserTypes != 1)
                                    {
                                        menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                          item.width + "\",editor:{" +  "}";
                                    }
                                    else
                                    {
                                        menus2 += "title:\"" + item.title + "\",field:\"" + item.field + "\", width:\"" +
                                             item.width + "\",editor:{" + item.editor + "}";   
                                    }
                                

                                }
                            }


                            menus2 += "},";
                        }
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
            d2.text = "清空";
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
        public JsonResult GetAllJsonResultList(string Condition,string seachsql)
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
            pc.sys_Where = GetNewSql(seachsql);
            pc.sys_Order = "ID";

            var list2 = OPBiz.ExecuteProToDataSetNew("sp_PaginationEx", pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = RMS_ButtonsSet.Id.NotEqual("");
            dic.Add("rows", list2.Tables[0]);
            dic.Add("total", pc.RCount);

            return Json(dic);
        }

        /// <summary>
        /// 查询动态表格内容根据登录人
        /// </summary>
        /// <param name="Condition"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult GetJsonResultListByUser(string Condition, string seachsql)
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
            pc.sys_Where =GetNewSql(seachsql)+ "and CreatName='" + UserData.UserName + "'";
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
            var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(id)));
            ViewBag.ViewBag = catmodle.ChineseName + catmodle.TableProperties;

            return View();
        }
        public ActionResult IndexDynamicColumnByUser()
        {
            string id = Request.QueryString["ID"];
            ViewBag.RuteUrl = id;
            var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(id)));
            ViewBag.ViewBag = catmodle.ChineseName + catmodle.TableProperties;
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

                    string sql = "INSERT INTO " + catmodle.UserTableName + "(ID,CreatName,";

                    foreach (KeyValuePair<string, string> kv in o2[0])
                    {
                        sql += "["+kv.Key + "],";

                    }
                    sql = sql.Substring(0, sql.Length - 1);
                    sql += ")VALUES ('" + Guid.NewGuid().ToString() + "','" + UserData.UserName + "',";

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
        public JsonResult Del(string IDSet, string CategoryTableID)
        {
            //int f
            //=0;

            var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(CategoryTableID)));
            string sql = "DELETE FROM  [" + catmodle.UserTableName + "] where  ID  in(" + IDSet+")";
         int f =  OPBiz.ExecuteSqlWithNonQuery(sql);;
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
            //else
            //{
            //    menus = "2";
            //}

            //var cheakwhere = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(Condition).And(ColumnChartsSet.IsEnable.Equal(true))
            //             .And(ColumnChartsSet.ISLoginsector.Equal(true)).Or(ColumnChartsSet.ISLogpeople.Equal(true)));
            var cheaklist = CCBiz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + Condition + "' and IsEnable=1 and (ISLoginsector=1 or ISLogpeople=1)");
            //  var cheaklist = CCBiz.GetEntities(cheakwhere);
            //if (cheaklist.Count>0)
            //{
                foreach (ColumnCharts chartse in cheaklist)
                {
                    if (chartse.ISLoginsector != null && chartse.ISLoginsector.Value)
                    {
                        menus += ",\"" + chartse.field + "\":\"" + UserData.DepartmentName + "\"";
                    }
                    else if (chartse.ISLogpeople != null && chartse.ISLogpeople.Value)
                    {
                        menus += ",\"" + chartse.field + "\":\"" + UserData.UserName + "\"";
                    }
                }

                menus += "}]";  
            //}
            

            return menus;

        }

        public ActionResult TemplateList()
        {
            return View();
        }

        public JsonResult GetSeachJson(string Condition)
        {
            var list3 =
                CCBiz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + Condition +
                                          "' and (title<>'ck') and IsEnable=1 and MergeHeader<>1 ORDER BY  SortNo");

            return Json(list3);
        }


        public ActionResult BaschartypeResult()
        {
            return View();
        }
        [HttpPost]
        public JsonResult BaschartypeGetList(string Condition)
        {


            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            ////字段排序
            //String sortField = Request["sortField"];
            //String sortOrder = Request["sortOrder"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "CharTypeId";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "Baschartype";
            pc.sys_Where = "1=1";
            pc.sys_Order = "CharTypeId";

            var list2 = Bciz.GetPagingData(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = RMS_ButtonsSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);

            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        public JsonResult EditBaschartype(Baschartype categoryTable)
        {

            bool IsAdd = false;
            HttpReSultMode ReSultMode = new HttpReSultMode();
            if (categoryTable != null && string.IsNullOrEmpty(categoryTable.CharTypeId))//id为空，是添加
            {
                IsAdd = true;
            }
            //if (OPBiz.GetCount<CategoryTableSet>(CategoryTableSet.UserTableName.Equal(categoryTable.UserTableName)) > 0.0)
            //{
            //    return Json("Nok", JsonRequestBehavior.AllowGet);
            //}

            if (IsAdd)
            {
                categoryTable.CharTypeId = Guid.NewGuid().ToString();
                //categoryTable.TableName_ = DateTime.Now;
                //categoryTable.TableProperties = DateTime.Now;
                //rol.RoleDescription = RMS_ButtonsModle.RoleDescription;
                //rol.RoleOrder = RMS_ButtonsModle.RoleOrder;

                Bciz.Add(categoryTable);
                ReSultMode.Code = 11;
                ReSultMode.Data = "";
                ReSultMode.Msg = "添加成功"; 
//                OPBiz.ExecuteSqlWithNonQuery("create table [" + categoryTable.UserTableName + "]  ( ID varchar(50) primary key,CreatName nvarchar(100) null ,CreateTime datetime null,ck nvarchar(100) null) ");
//                OPBiz.ExecuteSqlWithNonQuery("INSERT INTO [ColumnCharts]      ([ID],[CategoryTableID],[field],[title],[rowspan],[width],[IsEnable]) VALUES('" + Guid.NewGuid().ToString() + "','" + categoryTable.ID + "','ck','ck',1,100,1) ");
                //return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                categoryTable.WhereExpression = BaschartypeSet.CharTypeId.Equal(categoryTable.CharTypeId);
                //  spmodel.GroupId = GroupId;
                if (Bciz.Update(categoryTable) > 0)
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

        public JsonResult GetBaschartype(string ID)
        {
            var mql2 = BaschartypeSet.SelectAll().Where(BaschartypeSet.CharTypeId.Equal(ID));
            Baschartype Rmodel = Bciz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetBascharvalueList(string Condition)
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 10 : int.Parse(Request["rows"]);
            ////字段排序
            //String sortField = Request["sortField"];
            //String sortOrder = Request["sortOrder"];
            PageClass pc = new PageClass();
            pc.sys_Fields = "*";
            pc.sys_Key = "CharId";
            pc.sys_PageIndex = pageIndex;
            pc.sys_PageSize = pageSize;
            pc.sys_Table = "Bascharvalue";
            pc.sys_Where = "CharTypeId='" + Condition+"'";
            pc.sys_Order = "CharId";

            var list2 = Bcviz.GetPagingData(pc);
            Dictionary<string, object> dic = new Dictionary<string, object>();


            // var mql = RMS_ButtonsSet.Id.NotEqual("");
            dic.Add("rows", list2);
            dic.Add("total", pc.RCount);

            return Json(dic, JsonRequestBehavior.AllowGet);
        }
        public JsonResult DelBaschartype(string IDSet)
        {
            //int f
            //=0;
            string sql = "DELETE FROM  [Baschartype] where  CharTypeId  in(" + IDSet + ")";
            int f = Bcviz.ExecuteSqlWithNonQuery(sql); ;
            // int f = Bcviz.DelForSetDelete("CharId", IDSet);
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
        public ActionResult BascharvalueResult()
        {
            return View();
        }
        public JsonResult GetTreeJsonResult()
        {
            //  var mql2 = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(ID).And(ColumnChartsSet.ParentId.IsNullOrEmpty()));
            //   var Rmodel = CCBiz.GetEntities(mql2);
            var mql2 = BaschartypeSet.SelectAll();
            var Rmodel = Bciz.GetEntities(mql2);
          //  var Rmodel = Bciz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + ID + "' and MergeHeader=1");
            List<ComboxModle> list = new List<ComboxModle>();
            ComboxModle d2 = new ComboxModle();
            //d2.id = "";
            //d2.text = "清空";
            //list.Add(d2);
            foreach (var columnChart in Rmodel)
            {
                ComboxModle d = new ComboxModle();
                d.id = columnChart.CharTypeId;
                d.text = columnChart.CharTypeName;
                list.Add(d);
            }

            //  groupsBiz.Add(rol);
            return Json(list, JsonRequestBehavior.AllowGet);
        }

        public JsonResult EditBascharvalue(Bascharvalue categoryTable)
        {

            bool IsAdd = false;
            HttpReSultMode ReSultMode = new HttpReSultMode();
            if (categoryTable != null && string.IsNullOrEmpty(categoryTable.CharId))//id为空，是添加
            {
                IsAdd = true;
            }
            //if (OPBiz.GetCount<CategoryTableSet>(CategoryTableSet.UserTableName.Equal(categoryTable.UserTableName)) > 0.0)
            //{
            //    return Json("Nok", JsonRequestBehavior.AllowGet);
            //}

            if (IsAdd)
            {
                categoryTable.CharId = Guid.NewGuid().ToString();
                //categoryTable.TableName_ = DateTime.Now;
                //categoryTable.TableProperties = DateTime.Now;
                //rol.RoleDescription = RMS_ButtonsModle.RoleDescription;
                //rol.RoleOrder = RMS_ButtonsModle.RoleOrder;

                Bcviz.Add(categoryTable);
                ReSultMode.Code = 11;
                ReSultMode.Data = "";
                ReSultMode.Msg = "添加成功";
                //                OPBiz.ExecuteSqlWithNonQuery("create table [" + categoryTable.UserTableName + "]  ( ID varchar(50) primary key,CreatName nvarchar(100) null ,CreateTime datetime null,ck nvarchar(100) null) ");
                //                OPBiz.ExecuteSqlWithNonQuery("INSERT INTO [ColumnCharts]      ([ID],[CategoryTableID],[field],[title],[rowspan],[width],[IsEnable]) VALUES('" + Guid.NewGuid().ToString() + "','" + categoryTable.ID + "','ck','ck',1,100,1) ");
                //return Json("ok", JsonRequestBehavior.AllowGet);
            }
            else
            {

                categoryTable.WhereExpression = BascharvalueSet.CharId.Equal(categoryTable.CharId);
                //  spmodel.GroupId = GroupId;
                if (Bcviz.Update(categoryTable) > 0)
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

        public JsonResult GetBascharvalue(string ID)
        {
            var mql2 = BascharvalueSet.SelectAll().Where(BascharvalueSet.CharId.Equal(ID));
            Bascharvalue Rmodel = Bcviz.GetEntity(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }

        public JsonResult DelBascharvalue(string IDSet )
        {
            //int f
            //=0;
            string sql = "DELETE FROM  [Bascharvalue] where  CharId  in(" + IDSet + ")";
            int f = Bcviz.ExecuteSqlWithNonQuery(sql); ;
           // int f = Bcviz.DelForSetDelete("CharId", IDSet);
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

        public JsonResult GetBascharvalueS(string ID)
        {
            var mql2 = BascharvalueSet.SelectAll().Where(BascharvalueSet.CharTypeId.Equal(ID));
            var Rmodel = Bcviz.GetEntities(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult GetBdlList(string Condition, string seachsql, string ChildCategoryTableID)
        {
            var sqlc2 = MainAssociationSet.SelectAll().Where(MainAssociationSet.CategoryTableID.Equal(Condition).And(MainAssociationSet.ChildCategoryTableID.Equal(ChildCategoryTableID)));
           var d= Mabiz.GetEntity(sqlc2);
            var dic = new List<ColumnCharts>();
            if (d==null)
            {
                var sqlc = ColumnChartsSet.SelectAll().Where(ColumnChartsSet.CategoryTableID.Equal(Condition));
                 dic = CCBiz.GetEntities(sqlc);
            }
            else
            {
                dic = CCBiz.ExecuteSqlToOwnList("select * from  ColumnCharts where ID not in ( select ChildColumnChartsID from CorrelateColumns where MainAssociationID='" + d.ID + "') and CategoryTableID='" + Condition + "'");
            }


            return Json(dic);
        }
        [HttpPost]
        public JsonResult GetalreadyBdlList(string Condition, string seachsql, string ChildCategoryTableID)
        {
            var sqlc2 = MainAssociationSet.SelectAll().Where(MainAssociationSet.CategoryTableID.Equal(Condition).And(MainAssociationSet.ChildCategoryTableID.Equal(ChildCategoryTableID)));
            var d = Mabiz.GetEntity(sqlc2);
            var dic = new List<VcorrelateColumns>();
            if (d != null)
            {
            var sqlc = VcorrelateColumnsSet.SelectAll().Where(VcorrelateColumnsSet.MainAssociationID.Equal(d.ID));
            dic = Vcbiz.GetEntities(sqlc);
            }
            //else
            //{
            //    dic = CCBiz.ExecuteSqlToOwnList("select * from  ColumnCharts where ID not in ( select ChildColumnChartsID from CorrelateColumns where MainAssociationID='" + d.ID + "')");
            //}


            return Json(dic);
        }
        public JsonResult GetCategoryTable(string ID )
        {
            var mql2 = CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.NotEqual(ID));
            var Rmodel = OPBiz.GetEntities(mql2);
            //  groupsBiz.Add(rol);
            return Json(Rmodel, JsonRequestBehavior.AllowGet);
        }
       // CategoryTableID: categoryTableID, ChildCategoryTableID: childCategoryTableID, tbOutrow: tbOutrow, dgrows: dgrows 
        public JsonResult EditconnectionRelation(string CategoryTableID, string ChildCategoryTableID, string tbOutrow, string dgrows)
        {

            bool IsAdd = false;
            HttpReSultMode ReSultMode = new HttpReSultMode();
            var ColumnChartstbOutrow = JsonConvert.DeserializeObject<ColumnCharts>(tbOutrow);
            var ColumnChartsdgrows = JsonConvert.DeserializeObject<ColumnCharts>(dgrows);
            var sqlc2 = MainAssociationSet.SelectAll().Where(MainAssociationSet.CategoryTableID.Equal(CategoryTableID).And(MainAssociationSet.ChildCategoryTableID.Equal(ChildCategoryTableID)));
              
            var newmodle = Mabiz.GetEntity(sqlc2);
           
            if (newmodle==null)
            {
               newmodle=new MainAssociation();
                newmodle.ID = Guid.NewGuid().ToString();
                newmodle.CategoryTableID = CategoryTableID;
                newmodle.ChildCategoryTableID = ChildCategoryTableID;
                Mabiz.Add(newmodle);
            }
            var CorrelateColumnsmodle = new CorrelateColumns();
            CorrelateColumnsmodle.ID = Guid.NewGuid().ToString();
            CorrelateColumnsmodle.ColumnChartsID = ColumnChartsdgrows.ID;
            CorrelateColumnsmodle.ChildColumnChartsID = ColumnChartstbOutrow.ID;
            CorrelateColumnsmodle.MainAssociationID = newmodle.ID;
            try
            {
                Correlatecbiz.Add(CorrelateColumnsmodle);
                ReSultMode.Code = 11;
                ReSultMode.Data = "";
                ReSultMode.Msg = "更新成功";
            }
            catch (Exception e)
            {
                ReSultMode.Code = -11;
                        ReSultMode.Data = "";
                        ReSultMode.Msg = "更新失败";
            }
            //else
            //{
                
            //}
            //if (categoryTable != null && string.IsNullOrEmpty(categoryTable.CharId))//id为空，是添加
            //{
            //    IsAdd = true;
            //}
            ////if (OPBiz.GetCount<CategoryTableSet>(CategoryTableSet.UserTableName.Equal(categoryTable.UserTableName)) > 0.0)
            ////{
            ////    return Json("Nok", JsonRequestBehavior.AllowGet);
            ////}

            //if (IsAdd)
            //{
            //    categoryTable.CharId = Guid.NewGuid().ToString();
            //    //categoryTable.TableName_ = DateTime.Now;
            //    //categoryTable.TableProperties = DateTime.Now;
            //    //rol.RoleDescription = RMS_ButtonsModle.RoleDescription;
            //    //rol.RoleOrder = RMS_ButtonsModle.RoleOrder;

            //    Bcviz.Add(categoryTable);
            //    ReSultMode.Code = 11;
            //    ReSultMode.Data = "";
            //    ReSultMode.Msg = "添加成功";
            //    //                OPBiz.ExecuteSqlWithNonQuery("create table [" + categoryTable.UserTableName + "]  ( ID varchar(50) primary key,CreatName nvarchar(100) null ,CreateTime datetime null,ck nvarchar(100) null) ");
            //    //                OPBiz.ExecuteSqlWithNonQuery("INSERT INTO [ColumnCharts]      ([ID],[CategoryTableID],[field],[title],[rowspan],[width],[IsEnable]) VALUES('" + Guid.NewGuid().ToString() + "','" + categoryTable.ID + "','ck','ck',1,100,1) ");
            //    //return Json("ok", JsonRequestBehavior.AllowGet);
            //}
            //else
            //{

            //    categoryTable.WhereExpression = BascharvalueSet.CharId.Equal(categoryTable.CharId);
            //    //  spmodel.GroupId = GroupId;
            //    if (Bcviz.Update(categoryTable) > 0)
            //    {
            //        ReSultMode.Code = 11;
            //        ReSultMode.Data = "";
            //        ReSultMode.Msg = "更新成功";
            //    }
            //    else
            //    {
            //        ReSultMode.Code = -11;
            //        ReSultMode.Data = "";
            //        ReSultMode.Msg = "更新失败";
            //    }
            //}
            return Json(ReSultMode, JsonRequestBehavior.AllowGet);



        }

        public JsonResult DelconnectionRelation(string IDSet )
        {
            //int f
            //=0;

            //var catmodle = OPBiz.GetEntity(CategoryTableSet.SelectAll().Where(CategoryTableSet.ID.Equal(CategoryTableID)));
            string sql = "DELETE FROM  [CorrelateColumns] where  ID  in(" + IDSet + ")";
            int f = OPBiz.ExecuteSqlWithNonQuery(sql); ;
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

        public JsonResult GetAllowExport(string ID)
        {
            //var sqlc2 = MainAssociationSet.SelectAll().Where(MainAssociationSet.CategoryTableID.Equal(ID));
            //var d = Mabiz.GetEntities(sqlc2);

            var df = OPBiz.ExecuteSqlToOwnList("select * from CategoryTable where ID in ( select ChildCategoryTableID from  MainAssociation where CategoryTableID='" + ID + "')");
            return Json(df, JsonRequestBehavior.AllowGet);
        }
        

    }
}
