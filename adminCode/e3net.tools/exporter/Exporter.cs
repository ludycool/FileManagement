/*************************************************************************
 * 文件名称 ：Exporter.cs                          
 * 描述说明 ：文件导出处理
 * 
 * 创建信息 : create by liuhuisheng.xm@gmail.com on 2012-11-10
 * 修订信息 : modify by (person) on (date) for (reason)
 * 
 * 版权信息 : Copyright (c) 2013 厦门纵云信息科技有限公司 www.zoewin.com
**************************************************************************/

using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Runtime.CompilerServices;
using System.Web;
using Newtonsoft.Json;
using Zephyr.Utils;

namespace Zephyr.Core
{
    public class Exporter
    {
        const string DEFAULT_EXPORT = "xls";
        const string DEFAULT_DATAGETTER = "api";
        const string DEFAULT_COMPRESS = "none";

        private Dictionary<string, Type> _compress = new Dictionary<string, Type>() { 
           // { "zip", typeof(ZipCompress)},
            {"none",typeof(NoneCompress)}
        };
        private Dictionary<string, Type> _dataGetter = new Dictionary<string, Type>() { 
           // { "api", typeof(ApiData) } 
        };
        private Dictionary<string, Type> _export = new Dictionary<string, Type>() { 
            { "xls", typeof(XlsExport) }, 
           // { "xlsx", typeof(XlsxExport) } ,
            { "doc", typeof(HtmlDocExport) },
           // { "pdf", typeof(PdfExport) }
        };

        private Dictionary<string,IFormatter> _fieldFormatter = new Dictionary<string,IFormatter>();

        private object _data; 
        private DataTable _datatable;
        private List<List<Column>> _title;
        private Stream _fileStream = null;
        private string _fileName = string.Empty;
        private string _suffix = string.Empty; 
        private string _toptile = string.Empty;

        private string _CategoryTableID = string.Empty;

        private string _ChildCategoryTableID = string.Empty;
        public static string Path;
        public static Exporter Instance(string path)
        {
            var export = new Exporter();
            var context = HttpContext.Current;
             Path = path;
            if (context.Request.Form["titles"]!=null)
                export.Title(JsonConvert.DeserializeObject<List<List<Column>>>(context.Request.Form["titles"]));
  if (context.Request.Form["Title"] != null)
                export.TopTitle(context.Request.Form["Title"]);
            if (context.Request.Form["dataGetter"] != null)
                export.Data(context.Request.Form["dataGetter"]);

            if (context.Request.Form["fileType"] != null)
                export.Export(context.Request.Form["fileType"]);


          

            if (context.Request.Form["compressType"] != null)
                export.Compress(context.Request.Form["compressType"]);
 
            return export;
        }
        public static Exporter NewInstance(string path,DataTable dtTable,string toptitle)
        {
            var export = new Exporter();
            var context = HttpContext.Current;
            Path = path;
            if (context.Request.Form["titles"] != null)
                export.Title(JsonConvert.DeserializeObject<List<List<Column>>>(context.Request.Form["titles"]));
//            if (context.Request.Form["Title"] != null)
                export.TopTitle(toptitle);

            export.NewData(dtTable);
            //if (context.Request.Form["dataGetter"] != null)
            //    export.Data(context.Request.Form["dataGetter"]);

            if (context.Request.Form["ChildCategoryTableID"] != null)
                export.ChildCategoryTableID(context.Request.Form["ChildCategoryTableID"]);

            if (context.Request.Form["CategoryTableID"] != null)
                export.CategoryTableID(context.Request.Form["CategoryTableID"]);

            if (context.Request.Form["fileType"] != null)
                export.NewExport(context.Request.Form["fileType"]);




            if (context.Request.Form["compressType"] != null)
                export.Compress(context.Request.Form["compressType"]);

            return export;
        }

        private Exporter CategoryTableID(string p)
        {
            _CategoryTableID = p;
            return this;
        }

        private Exporter ChildCategoryTableID(string p)
        {
            _ChildCategoryTableID = p;
            return this;
        }

        public Exporter TopTitle(string data)
        {
            _toptile = data;
            return this;
        }
        public Exporter Data(IDataGetter data)
        {
            _data = data.GetData(HttpContext.Current);
            return this;
        }
 
        //public Exporter Data(string type)
        //{
        //    var dataGetter = GetActor<IDataGetter>(_dataGetter, DEFAULT_DATAGETTER,type);
        //    return Data(dataGetter);
        //}

        public Exporter Data(string data)
        {

            _datatable = JsonConvert.DeserializeObject<DataTable>(data);
           // _data = data;
            return this;
        }
 public Exporter NewData(DataTable data)
        {

            _datatable = data;
           // _data = data;
            return this;
        }

        public Exporter AddFormatter(string field,IFormatter formatter)
        {
            _fieldFormatter[field] = formatter;
            return this;
        }

        public Exporter Title(List<List<Column>> title)
        {
            _title = title;
            return this;
        }

        public Exporter FileName(string fileName)
        {
            _fileName = fileName;
            return this;
        }

        public Exporter Export(string type)
        {
            var export = GetActor<IExport>(_export, DEFAULT_EXPORT, type);
            return Export(export);
        }  public Exporter NewExport(string type)
        {
            var export = GetActor<IExport>(_export, DEFAULT_EXPORT, type);
            return NewExport(export);
        }

        public Exporter Export(IExport export)
        {
            if (_title == null)
            {
                _title = new List<List<Column>>();
                _title.Add(new List<Column>());
                EachHelper.EachListHeader(_data, (i, field, type) => _title[0].Add(new Column() { title = field, field = field, rowspan = 1, colspan = 1 }));
            }
 
            Dictionary<int, int> currentHeadRow = new Dictionary<int, int>();
            Dictionary<string, List<int>> fieldIndex = new Dictionary<string, List<int>>();
            Func<int, int> GetCurrentHeadRow = cell => currentHeadRow.ContainsKey(cell) ? currentHeadRow[cell] : 0;
           // var currentRowindex = 2;
            var currentRow = 2;
            var currentCell = 0;

            export.Init(_data);

            //生成多行题头
            for (var i = 0; i < _title.Count; i++)
            {
                currentCell = 0;

                for (var j = 0; j < _title[i].Count; j++)
                {
                    var item = _title[i][j];
                    if (item.hidden) continue;

                    while (currentRow < GetCurrentHeadRow(currentCell)+2) 
                        currentCell++;
                    if (item.field != "ck")
                    {


                        export.FillData(currentCell, currentRow, "title_" + item.field, item.title);

                        if (item.rowspan + item.colspan > 2)
                            export.MergeCell(currentCell, currentRow, currentCell + item.colspan - 1, currentRow + item.rowspan - 1);

                        if (!string.IsNullOrEmpty(item.field))
                        {
                            if (!fieldIndex.ContainsKey(item.field))
                                fieldIndex[item.field] = new List<int>();
                            fieldIndex[item.field].Add(currentCell);
                        }

                        for (var k = 0; k < item.colspan; k++)
                            currentHeadRow[currentCell] = GetCurrentHeadRow(currentCell++) + item.rowspan;
                    }
                }
                currentRow++;
            }

            export.FillTitleData(0, 0, "", _toptile);
            export.MergeCell(0, 0, currentCell - 1, 1);
            //设置题头样式
            export.SetHeadStyle(0, 0 , currentCell - 1, currentRow - 1);

            //设置数据样式
            var dataCount = 0;
            if (_datatable !=null&&_datatable.Rows.Count > 0)
            {
                dataCount = _datatable.Rows.Count;
                //EachHelper.EachListRow(_data, (i, r) => dataCount++);
                export.SetRowsStyle(0, currentRow, currentCell - 1, currentRow + dataCount - 1);

                //填充数据
                //            EachHelper.EachListRow(_data, (rowIndex, rowData) =>
                //            {
                //                EachHelper.EachObjectProperty(rowData, (i, name, value) =>
                //                {
                //                    if (fieldIndex.ContainsKey(name))
                //                        foreach (int cellIndex in fieldIndex[name])
                //                        {
                //                            if (_fieldFormatter.ContainsKey(name))
                //                                value = _fieldFormatter[name].Format(value);
                //                            export.FillData(cellIndex, currentRow, name, value);
                //                        }
                //                });
                //                currentRow++;
                //            });
                int cellIndex = 0;
                int cellnum = currentCell;
                int h = 0;
                if (_datatable.Columns.Contains("ck"))
                {
                    cellnum++;
                    h++;
                }
                if (_datatable.Columns.Contains("ID"))
                {
                    cellnum++;
                    h++;

                }
                foreach (DataRow row in _datatable.Rows)
                {
                    int k = 0;
                    for (int i = h; i < cellnum; i++)
                    {


                        export.FillData(k, currentRow, "", row[i]);
                        k++;
                    }


                    currentRow++;
                }
            }
           
             export.SaveAsStream(Path);

            //_suffix = export.suffix;
            //if (string.IsNullOrEmpty(_fileName))
            //    _fileName = DateTime.Now.ToString("yyyyMMddHHmmss");
            
            return this;
        }
        public Exporter NewExport(IExport export)
        {
            if (_title == null)
            {
                _title = new List<List<Column>>();
                _title.Add(new List<Column>());
                EachHelper.EachListHeader(_data, (i, field, type) => _title[0].Add(new Column() { title = field, field = field, rowspan = 1, colspan = 1 }));
            }

            Dictionary<int, int> currentHeadRow = new Dictionary<int, int>();
            Dictionary<string, List<int>> fieldIndex = new Dictionary<string, List<int>>();
            Func<int, int> GetCurrentHeadRow = cell => currentHeadRow.ContainsKey(cell) ? currentHeadRow[cell] : 0;
            // var currentRowindex = 2;
            var currentRow = 2;
            var currentCell = 0;

            export.Init(_data);

            //生成多行题头
            for (var i = 0; i < _title.Count; i++)
            {
                currentCell = 0;

                for (var j = 0; j < _title[i].Count; j++)
                {
                    var item = _title[i][j];
                    if (item.hidden) continue;

                    while (currentRow < GetCurrentHeadRow(currentCell) + 2)
                        currentCell++;
                    if (item.field != "ck")
                    {


                        export.FillData(currentCell, currentRow, "title_" + item.field, item.title);

                        if (item.rowspan + item.colspan > 2)
                            export.MergeCell(currentCell, currentRow, currentCell + item.colspan - 1, currentRow + item.rowspan - 1);

                        if (!string.IsNullOrEmpty(item.field))
                        {
                            if (!fieldIndex.ContainsKey(item.field))
                                fieldIndex[item.field] = new List<int>();
                            fieldIndex[item.field].Add(currentCell);
                        }

                        for (var k = 0; k < item.colspan; k++)
                            currentHeadRow[currentCell] = GetCurrentHeadRow(currentCell++) + item.rowspan;
                    }
                }
                currentRow++;
            }

            export.FillTitleData(0, 0, "", _toptile);
            export.MergeCell(0, 0, currentCell - 1, 1);
            //设置题头样式
            export.SetHeadStyle(0, 0, currentCell - 1, currentRow - 1);

            //设置数据样式
            var dataCount = 0;
            dataCount = _datatable.Rows.Count;
            //EachHelper.EachListRow(_data, (i, r) => dataCount++);
            export.SetRowsStyle(0, currentRow, currentCell - 1, currentRow + dataCount - 1);

            //填充数据
            //            EachHelper.EachListRow(_data, (rowIndex, rowData) =>
            //            {
            //                EachHelper.EachObjectProperty(rowData, (i, name, value) =>
            //                {
            //                    if (fieldIndex.ContainsKey(name))
            //                        foreach (int cellIndex in fieldIndex[name])
            //                        {
            //                            if (_fieldFormatter.ContainsKey(name))
            //                                value = _fieldFormatter[name].Format(value);
            //                            export.FillData(cellIndex, currentRow, name, value);
            //                        }
            //                });
            //                currentRow++;
            //            });
            int cellIndex = 0;
            int cellnum = currentCell;
            int h = 0;
            if (_datatable.Columns.Contains("ck"))
            {
                cellnum++;
                h++;
            }
            if (_datatable.Columns.Contains("ID"))
            {
                cellnum++;
                h++;

            }
            foreach (DataRow row in _datatable.Rows)
            {
                int k = 0;
                for (int i = h; i < cellnum; i++)
                {


                    export.FillData(k, currentRow, "", row[i]);
                    k++;
                }


                currentRow++;
            }
            export.SaveAsStream(Path);

            //_suffix = export.suffix;
            //if (string.IsNullOrEmpty(_fileName))
            //    _fileName = DateTime.Now.ToString("yyyyMMddHHmmss");

            return this;
        }
        public Exporter Compress(string type)
        {
            var compress = GetActor<ICompress>(_compress, DEFAULT_COMPRESS, type);
            return Compress(compress);
        }

        public Exporter Compress(ICompress compress)
        {
            _fileStream = compress.Compress(_fileStream, string.Format("{0}.{1}", _fileName, _suffix));
            _suffix = compress.Suffix(_suffix);
            return this;
        }

        public  Stream Download()
        {
             return _fileStream;
            //if (_fileStream != null && _fileStream.Length > 0)
            //    ZFiles.DownloadFile(HttpContext.Current, _fileStream, string.Format("{0}.{1}", _fileName, _suffix), 1024 * 1024 * 10);
        }
 
        private T GetActor<T>(Dictionary<string, Type> dict, string defaultKey, string key)
        {
            if (!dict.ContainsKey(key))
                key = defaultKey;

            return (T)Activator.CreateInstance(dict[key]);
        }
    }
}
