using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DefaultConnection;
using e3net.BLL.DynamicTable;
using ESUI.Models;
using Microsoft.Practices.Unity;
using Newtonsoft.Json;
using Zephyr.Core;

namespace ESUI.Controllers
{
    public class ExcelController : Controller
    {
        [Dependency]
        public MainAssociationBiz Mabiz { get; set; }

        [Dependency]
        public CorrelateColumnsBiz Correlatecbiz { get; set; }
        [Dependency]
        public VcorrelateColumnsBiz Vcbiz { get; set; }

        [Dependency]
        public ColumnChartsBiz CCBiz { get; set; }
        //
        // GET: /Excel/

        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public FileResult CommonExport(string Title, string Columns, string Data)
        {
            //var tb = JsonConvert.DeserializeObject<DataTable>(Data);
            //var Columnslist = JsonConvert.DeserializeObject<List<Column>>(Columns);
            //var workbook = new Workbook();
            //workbook.CreateSheet(new Sheet(Title, Columnslist, tb));
            //var tb = JsonConvert.DeserializeObject<DataTable>(Data);
            //var Columnslist = JsonConvert.DeserializeObject<List<Column>>(Columns);
            //var workbook = new Workbook();
            //workbook.CreateSheet(new Sheet(Title, Columnslist, tb));
            //var fileStream = workbook.GetMemoryStream();
            //return File(fileStream, "application/ms-excel", string.Format("{0}.xls", Title));
            //return File(fileStream, "application/ms-excel", string.Format("{0}.xls", Title));
            string filename = Guid.NewGuid().ToString() + ".xlsx";
            var ff = Exporter.Instance(Server.MapPath("~/temp/" + filename)).Download();
            return File(Server.MapPath("~/temp/" + filename), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", string.Format("{0}.xls", Title));
            // return File(ff, "application/ms-excel", string.Format("{0}.xls", "czc"));
        }
        [HttpPost]
        public FileResult CommonExportNewport(string Title, string Columns, string Data)
        {
            string ChildCategoryTableID = "";
            if (Request.Form["ChildCategoryTableID"] != null)
            {
                ChildCategoryTableID = Request.Form["ChildCategoryTableID"];
            }
            string CategoryTableID = "";

            if (Request.Form["CategoryTableID"] != null)
            {
                CategoryTableID = Request.Form["CategoryTableID"];
            }
            DataTable _datatable = new DataTable();
            if (Request.Form["dataGetter"] != null)
            {
                _datatable = JsonConvert.DeserializeObject<DataTable>(Request.Form["dataGetter"]);


            }

            var sqlc2 = MainAssociationSet.SelectAll().Where(MainAssociationSet.CategoryTableID.Equal(CategoryTableID).And(MainAssociationSet.ChildCategoryTableID.Equal(ChildCategoryTableID)));

            var newmodle = Mabiz.GetEntity(sqlc2);

            var sqlc = VcorrelateColumnsSet.SelectAll().Where(VcorrelateColumnsSet.MainAssociationID.Equal(newmodle.ID));
            var dic = Vcbiz.GetEntities(sqlc);


            var list = CCBiz.ExecuteSqlToOwnList("select * from ColumnCharts where CategoryTableID='" + ChildCategoryTableID + "'  and IsEnable=1 and MergeHeader<>1 and (title<>'ck')  ORDER BY  SortNo");
            DataTable dt2 = new DataTable();
            dt2.Columns.Add("ID");
            for (int i = 0; i < list.Count; i++)
            {
                dt2.Columns.Add(list[i].field);
            }
            UniteDataTable(_datatable, dt2, dic);
            string filename = Guid.NewGuid().ToString() + ".xlsx";
            var ff = Exporter.NewInstance(Server.MapPath("~/temp/" + filename), dt2).Download();
            return File(Server.MapPath("~/temp/" + filename), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", string.Format("{0}.xls", Title));
            // return File(ff, "application/ms-excel", string.Format("{0}.xls", "czc"));
        }
        //两个结构不同的DT合并
        /// <summary>
        /// 将两个列不同的DataTable合并成一个新的DataTable
        /// </summary>
        /// <param name="dt1">表1</param>
        /// <param name="dt2">表2</param>
        /// <param name="DTName">合并后新的表名</param>
        /// <returns></returns>
        private void UniteDataTable(DataTable dt1, DataTable dt2, List<VcorrelateColumns> vlist)
        {

            int k = 0;
            foreach (DataRow row in dt1.Rows)
            {
                DataRow dr3;
                dr3 = dt2.NewRow();
                dt2.Rows.Add(dr3);
                dt2.Rows[k]["ID"] = k;
                foreach (VcorrelateColumns columnse in vlist)
                {
                    dt2.Rows[k][columnse.guanfield] = row[columnse.yuanfield];
                }

                k++;
            }

            // dt3.TableName = DTName; //设置DT的名字
        }

    }
}
