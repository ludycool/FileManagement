﻿using System;
using Moon.Orm;

namespace e3net.Mode
{
    /// <summary>
    /// 动态表
    /// </summary>
    [Table("[CategoryTable]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(String), "ID")]
    public partial class CategoryTable : EntityBase
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
        /// 表名
        /// </summary>
        public String UserTableName
        {
            get { return GetPropertyValue<String>("UserTableName"); }
            set { SetPropertyValue("UserTableName", value); }
        }

        /// <summary>
        /// 中文名称
        /// </summary>
        public String ChineseName
        {
            get { return GetPropertyValue<String>("ChineseName"); }
            set { SetPropertyValue("ChineseName", value); }
        }

        /// <summary>
        /// 表属性
        /// </summary>
        public String TableProperties
        {
            get { return GetPropertyValue<String>("TableProperties"); }
            set { SetPropertyValue("TableProperties", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? Column_5
        {
            get { return GetPropertyValue<DateTime?>("Column_5"); }
            set { SetPropertyValue("Column_5", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? Column_6
        {
            get { return GetPropertyValue<Boolean?>("Column_6"); }
            set { SetPropertyValue("Column_6", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Column_7
        {
            get { return GetPropertyValue<String>("Column_7"); }
            set { SetPropertyValue("Column_7", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Column_8
        {
            get { return GetPropertyValue<String>("Column_8"); }
            set { SetPropertyValue("Column_8", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Column_9
        {
            get { return GetPropertyValue<String>("Column_9"); }
            set { SetPropertyValue("Column_9", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? Column_10
        {
            get { return GetPropertyValue<Int32?>("Column_10"); }
            set { SetPropertyValue("Column_10", value); }
        }
    }

    [Table("[CategoryTable]", DbType.SqlServer)]
    public  partial class CategoryTableSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[CategoryTable]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[CategoryTable]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(CategoryTableSet),DbType.SqlServer,"[CategoryTable]",fields);
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ID = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.OnlyPrimaryKey, "[ID]");

        /// <summary>
        /// 表名
        /// </summary>
        public static readonly FieldBase UserTableName = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.Common, "[UserTableName]");

        /// <summary>
        /// 中文名称
        /// </summary>
        public static readonly FieldBase ChineseName = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.Common, "[ChineseName]");

        /// <summary>
        /// 表属性
        /// </summary>
        public static readonly FieldBase TableProperties = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.Common, "[TableProperties]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_5 = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.Common, "[Column_5]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_6 = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.Common, "[Column_6]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_7 = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.Common, "[Column_7]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_8 = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.Common, "[Column_8]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_9 = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.Common, "[Column_9]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_10 = new FieldBase(DbType.SqlServer, "[CategoryTable]", FieldType.Common, "[Column_10]");
    }

}
