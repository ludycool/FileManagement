using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace DefaultConnection
{
    /// <summary>
    /// 动态表关联的列
    /// </summary>
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
        public String CategoryTableID
        {
            get { return GetPropertyValue<String>("CategoryTableID"); }
            set { SetPropertyValue("CategoryTableID", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String field
        {
            get { return GetPropertyValue<String>("field"); }
            set { SetPropertyValue("field", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String title
        {
            get { return GetPropertyValue<String>("title"); }
            set { SetPropertyValue("title", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? rowspan
        {
            get { return GetPropertyValue<Int32?>("rowspan"); }
            set { SetPropertyValue("rowspan", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? width
        {
            get { return GetPropertyValue<Int32?>("width"); }
            set { SetPropertyValue("width", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? colspan
        {
            get { return GetPropertyValue<Int32?>("colspan"); }
            set { SetPropertyValue("colspan", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String align
        {
            get { return GetPropertyValue<String>("align"); }
            set { SetPropertyValue("align", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? resizable
        {
            get { return GetPropertyValue<Boolean?>("resizable"); }
            set { SetPropertyValue("resizable", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? hidden
        {
            get { return GetPropertyValue<Boolean?>("hidden"); }
            set { SetPropertyValue("hidden", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String formatter
        {
            get { return GetPropertyValue<String>("formatter"); }
            set { SetPropertyValue("formatter", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? checkbox
        {
            get { return GetPropertyValue<Boolean?>("checkbox"); }
            set { SetPropertyValue("checkbox", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String styler
        {
            get { return GetPropertyValue<String>("styler"); }
            set { SetPropertyValue("styler", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String editor
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

        /// <summary>
        /// 
        /// </summary>
        public Boolean? MergeHeader
        {
            get { return GetPropertyValue<Boolean?>("MergeHeader"); }
            set { SetPropertyValue("MergeHeader", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String ParentId
        {
            get { return GetPropertyValue<String>("ParentId"); }
            set { SetPropertyValue("ParentId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? ISLogpeople
        {
            get { return GetPropertyValue<Boolean?>("ISLogpeople"); }
            set { SetPropertyValue("ISLogpeople", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? ISLoginsector
        {
            get { return GetPropertyValue<Boolean?>("ISLoginsector"); }
            set { SetPropertyValue("ISLoginsector", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? ManagingStatus
        {
            get { return GetPropertyValue<Boolean?>("ManagingStatus"); }
            set { SetPropertyValue("ManagingStatus", value); }
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
        public static readonly FieldBase CategoryTableID = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[CategoryTableID]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase field = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[field]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase title = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[title]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase rowspan = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[rowspan]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase width = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[width]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase colspan = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[colspan]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase align = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[align]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase resizable = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[resizable]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase hidden = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[hidden]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase formatter = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[formatter]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase checkbox = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[checkbox]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase styler = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[styler]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase editor = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[editor]");

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

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase MergeHeader = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[MergeHeader]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ParentId = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[ParentId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ISLogpeople = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[ISLogpeople]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ISLoginsector = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[ISLoginsector]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ManagingStatus = new FieldBase(DbType.SqlServer, "[ColumnCharts]", FieldType.Common, "[ManagingStatus]");
    }

}
