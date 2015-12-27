using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace DefaultConnection
{

    [Table("[ColumnCharts]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(String), "ID")]
    public partial class ColumnCharts : EntityBase
    {

        /// <summary>
        /// 
        /// </summary>
        public String ID
        {
            get { return GetPropertyValue<String>("ID"); }
            set { SetPropertyValue("ID", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CategoryTable
        {
            get { return GetPropertyValue<String>("CategoryTable"); }
            set { SetPropertyValue("CategoryTable", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Field
        {
            get { return GetPropertyValue<String>("field"); }
            set { SetPropertyValue("field", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Title
        {
            get { return GetPropertyValue<String>("title"); }
            set { SetPropertyValue("title", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? Rowspan
        {
            get { return GetPropertyValue<Int32?>("rowspan"); }
            set { SetPropertyValue("rowspan", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? Width
        {
            get { return GetPropertyValue<Int32?>("width"); }
            set { SetPropertyValue("width", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? Colspan
        {
            get { return GetPropertyValue<Int32?>("colspan"); }
            set { SetPropertyValue("colspan", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Align
        {
            get { return GetPropertyValue<String>("align"); }
            set { SetPropertyValue("align", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? Resizable
        {
            get { return GetPropertyValue<Boolean?>("resizable"); }
            set { SetPropertyValue("resizable", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? Fixed
        {
            get { return GetPropertyValue<Boolean?>("fixed"); }
            set { SetPropertyValue("fixed", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? Hidden
        {
            get { return GetPropertyValue<Boolean?>("hidden"); }
            set { SetPropertyValue("hidden", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Formatter
        {
            get { return GetPropertyValue<String>("formatter"); }
            set { SetPropertyValue("formatter", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? Checkbox
        {
            get { return GetPropertyValue<Boolean?>("checkbox"); }
            set { SetPropertyValue("checkbox", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Styler
        {
            get { return GetPropertyValue<String>("styler"); }
            set { SetPropertyValue("styler", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Editor
        {
            get { return GetPropertyValue<String>("editor"); }
            set { SetPropertyValue("editor", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Decimal? SortNo
        {
            get { return GetPropertyValue<Decimal?>("SortNo"); }
            set { SetPropertyValue("SortNo", value); }
        }

        /// <summary>
        /// 是否启用
        /// </summary>
        public Boolean? IsEnable
        {
            get { return GetPropertyValue<Boolean?>("IsEnable"); }
            set { SetPropertyValue("IsEnable", value); }
        }

        /// <summary>
        /// 是否编号
        /// </summary>
        public Boolean? IsNumber
        {
            get { return GetPropertyValue<Boolean?>("IsNumber"); }
            set { SetPropertyValue("IsNumber", value); }
        }

        /// <summary>
        /// 启动公式计算地址
        /// </summary>
        public String NumberAddress
        {
            get { return GetPropertyValue<String>("NumberAddress"); }
            set { SetPropertyValue("NumberAddress", value); }
        }
    }

    [Table("[ColumnCharts]", DbType.SqlServer)]
    public  partial class ColumnChartsSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[ColumnCharts]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[ColumnCharts]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(ColumnChartsSet),DbType.SqlServer,"[ColumnCharts]",fields);
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ID = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.OnlyPrimaryKey, "[ID]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CategoryTable = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[CategoryTable]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Field = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[field]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Title = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[title]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Rowspan = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[rowspan]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Width = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[width]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Colspan = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[colspan]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Align = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[align]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Resizable = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[resizable]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Fixed = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[fixed]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Hidden = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[hidden]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Formatter = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[formatter]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Checkbox = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[checkbox]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Styler = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[styler]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Editor = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[editor]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase SortNo = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[SortNo]");

        /// <summary>
        /// 是否启用
        /// </summary>
        public static readonly FieldBase IsEnable = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[IsEnable]");

        /// <summary>
        /// 是否编号
        /// </summary>
        public static readonly FieldBase IsNumber = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[IsNumber]");

        /// <summary>
        /// 启动公式计算地址
        /// </summary>
        public static readonly FieldBase NumberAddress = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[NumberAddress]");
    }

}
