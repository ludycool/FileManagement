using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ESUI.Models;
using Newtonsoft.Json;

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
            var tb = JsonConvert.DeserializeObject<DataTable>(Data);
            var Columnslist = JsonConvert.DeserializeObject<List<Column>>(Columns);
            var workbook = new Workbook();
            workbook.CreateSheet(new Sheet(Title, Columnslist, tb));
            var fileStream = workbook.GetMemoryStream();
            return File(fileStream, "application/ms-excel", string.Format("{0}.xls", Title));
        }

    }
}
