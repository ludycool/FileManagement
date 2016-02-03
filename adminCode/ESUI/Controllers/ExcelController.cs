using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ESUI.Models;
using Newtonsoft.Json;
using Zephyr.Core;

namespace ESUI.Controllers
{
    public class ExcelController : Controller
    {
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
            var ff = Exporter.Instance(Server.MapPath("~/temp/" + filename )).Download();
            return File(Server.MapPath("~/temp/" + filename), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", string.Format("{0}.xls", Title));
         // return File(ff, "application/ms-excel", string.Format("{0}.xls", "czc"));
        }

    }
}
