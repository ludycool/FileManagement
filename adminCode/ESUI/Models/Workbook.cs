using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using NPOI.HPSF;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;

namespace ESUI.Models
{
    /// <summary>
    /// 工作薄
    /// </summary>
    public class Workbook
    {
        public HSSFWorkbook workbook;
        /// <summary>
        /// 表头格式
        /// </summary>
        private HSSFCellStyle HeadStyle
        {
            get
            {
                HSSFCellStyle headStyle = (HSSFCellStyle)workbook.CreateCellStyle();
                headStyle.Alignment = NPOI.SS.UserModel.HorizontalAlignment.Center;
                headStyle.VerticalAlignment = NPOI.SS.UserModel.VerticalAlignment.Center;
                HSSFFont font = (HSSFFont)workbook.CreateFont();
                font.FontHeightInPoints = 10;
                font.Boldweight = 700;
                headStyle.SetFont(font);
                return headStyle;
            }
        }
        /// <summary>
        /// 时间格式
        /// </summary>
        private HSSFCellStyle DateStyle
        {
            get
            {
                HSSFCellStyle dateStyle = (HSSFCellStyle)workbook.CreateCellStyle();
                HSSFDataFormat format = (HSSFDataFormat)workbook.CreateDataFormat();
                dateStyle.DataFormat = format.GetFormat("yyyy-mm-dd");
                return dateStyle;
            }
        }

        /// <summary>
        /// 实例一个工作薄
        /// </summary>
        public Workbook()
        {
            workbook = new HSSFWorkbook();
            #region 右击文件 属性信息
            DocumentSummaryInformation dsi = PropertySetFactory.CreateDocumentSummaryInformation();
            dsi.Company = "SiBu";
            workbook.DocumentSummaryInformation = dsi;

            SummaryInformation si = PropertySetFactory.CreateSummaryInformation();
            si.CreateDateTime = System.DateTime.Now;
            workbook.SummaryInformation = si;
            #endregion
        }

        /// <summary>
        /// 加载Excel文件
        /// </summary>
        /// <param name="filePath">文件路径</param>
        public Workbook(string filePath)
        {
            using (FileStream file = new FileStream(filePath, FileMode.Open, FileAccess.Read))
            {
                workbook = new HSSFWorkbook(file);
            }
        }

        /// <summary>
        /// 获取Sheet页的数据
        /// </summary>
        /// <param name="sheetIndex">Sheet页Index，从0开始</param>
        /// <returns>DataTable</returns>
        public DataTable GetDataTable(int sheetIndex = 0)
        {
            DataTable dt = new DataTable();

            HSSFSheet sheet = (HSSFSheet)workbook.GetSheetAt(sheetIndex);
            System.Collections.IEnumerator rows = sheet.GetRowEnumerator();

            HSSFRow headerRow = (HSSFRow)sheet.GetRow(0);
            int cellCount = headerRow.LastCellNum;

            for (int j = 0; j < cellCount; j++)
            {
                HSSFCell cell = (HSSFCell)headerRow.GetCell(j);
                dt.Columns.Add(cell.ToString());
            }

            for (int i = (sheet.FirstRowNum + 1); i <= sheet.LastRowNum; i++)
            {
                HSSFRow row = (HSSFRow)sheet.GetRow(i);
                if (row == null)
                    continue;
                DataRow dataRow = dt.NewRow();

                for (int j = row.FirstCellNum; j < cellCount; j++)
                {
                    ICell cell = row.GetCell(j);
                    if (cell != null)
                    {
                        if (cell.CellType == CellType.Numeric)
                        {
                            //NPOI中数字和日期都是NUMERIC类型的，这里对其进行判断是否是日期类型
                            if (HSSFDateUtil.IsCellDateFormatted(cell))//日期类型
                            {
                                dataRow[j] = cell.DateCellValue;
                            }
                            else//其他数字类型
                            {
                                dataRow[j] = cell.NumericCellValue;
                            }
                        }
                        else if (cell.CellType == CellType.Blank)//空数据类型
                        {
                            dataRow[j] = "";
                        }
                        else if (cell.CellType == CellType.Formula)//公式类型
                        {
                            HSSFFormulaEvaluator eva = new HSSFFormulaEvaluator(workbook);
                            dataRow[j] = eva.Evaluate(cell).StringValue;
                        }
                        else //其他类型都按字符串类型来处理
                        {
                            dataRow[j] = cell.StringCellValue;
                        }
                    }
                }

                dt.Rows.Add(dataRow);
            }
            return dt;
        }

        /// <summary>
        /// 创建一个Sheet页
        /// </summary>
        /// <param name="Sheet">Sheet</param>
        public void CreateSheet(Sheet sheetInfo)
        {
            if (string.IsNullOrWhiteSpace(sheetInfo.Name)) sheetInfo.Name = "Sheet" + workbook.NumberOfSheets + 1;
            HSSFSheet sheet = (HSSFSheet)workbook.CreateSheet(sheetInfo.Name);

            int rowIndex = 0;

            #region 新建表，填充表头，填充列头，样式
            HSSFRow headerRow = (HSSFRow)sheet.CreateRow(rowIndex);
            headerRow.HeightInPoints = 20;
            var columIndex = 0;
            foreach (var column in sheetInfo.Columns)
            {
                if (column.Name!="ck")
                {
                    
              
                headerRow.CreateCell(columIndex).SetCellValue(column.Name);
                headerRow.GetCell(columIndex).CellStyle = HeadStyle;
                //设置列宽
                sheet.SetColumnWidth(columIndex, column.Width * 256);
                sheet.SetColumnHidden(columIndex, column.Hidden);
                columIndex++;
                }
            }

            #endregion
            #region 填充内容
            rowIndex = 1;
            foreach (DataRow row in sheetInfo.DataSource.Rows)
            {
                HSSFRow dataRow = (HSSFRow)sheet.CreateRow(rowIndex);
                var columnIndex = 0;
                foreach (var column in sheetInfo.Columns)
                {
                    if (!string.IsNullOrEmpty(column.Code))
                    {
                        HSSFCell newCell = (HSSFCell) dataRow.CreateCell(columnIndex);
                        if (!sheetInfo.DataSource.Columns.Contains(column.Code))
                        {
                            newCell.SetCellValue("");
                        }
                        else
                        {
                            #region

                            string drValue = row[column.Code].ToString();

                            switch (column.DataType.ToUpper())
                            {
                                case "S": //字符串类型
                                    newCell.SetCellValue(drValue);
                                    break;
                                case "D": //日期类型
                                    DateTime dateV;
                                    DateTime.TryParse(drValue, out dateV);
                                    newCell.SetCellValue(dateV);
                                    newCell.CellStyle = DateStyle; //格式化显示
                                    break;
                                case "B": //布尔型
                                    bool boolV = false;
                                    bool.TryParse(drValue, out boolV);
                                    newCell.SetCellValue(boolV);
                                    break;
                                case "I": //整型
                                    int intV = 0;
                                    int.TryParse(drValue, out intV);
                                    newCell.SetCellValue(intV);
                                    break;
                                case "F": //浮点型
                                    double doubV = 0;
                                    double.TryParse(drValue, out doubV);
                                    newCell.SetCellValue(doubV);
                                    break;
                                default:
                                    newCell.SetCellValue(drValue);
                                    break;
                            }

                            #endregion

                        }
                        columnIndex++;
                    }
                }
                rowIndex++;
            }
            #endregion
        }

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="filePath">文件路径</param>
        public void SaveAs(string filePath)
        {
            using (MemoryStream ms = new MemoryStream())
            {
                workbook.Write(ms);
                ms.Flush();
                ms.Position = 0;

                using (FileStream fs = new FileStream(filePath, FileMode.Create, FileAccess.Write))
                {
                    byte[] data = ms.ToArray();
                    fs.Write(data, 0, data.Length);
                    fs.Flush();
                }
            }
        }

        /// <summary>
        /// 获取Workbook的MemoryStream
        /// </summary>
        /// <returns></returns>
        public MemoryStream GetMemoryStream()
        {
            MemoryStream ms = new MemoryStream();
            workbook.Write(ms);
            ms.Flush();
            ms.Position = 0;
            return ms;
        }
    }
}