using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace DefaultConnection
{

    [Table("[EntryRecordForm]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(String), "ID")]
    public partial class EntryRecordForm : EntityBase
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
        public String unit
        {
            get { return GetPropertyValue<String>("unit"); }
            set { SetPropertyValue("unit", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String name
        {
            get { return GetPropertyValue<String>("name"); }
            set { SetPropertyValue("name", value); }
        }

        /// <summary>
        /// 材料名称
        /// </summary>
        public String MaterialName
        {
            get { return GetPropertyValue<String>("MaterialName"); }
            set { SetPropertyValue("MaterialName", value); }
        }

        /// <summary>
        /// 录入时间
        /// </summary>
        public DateTime? CreateDate
        {
            get { return GetPropertyValue<DateTime?>("CreateDate"); }
            set { SetPropertyValue("CreateDate", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Remark
        {
            get { return GetPropertyValue<String>("Remark"); }
            set { SetPropertyValue("Remark", value); }
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
        public String Column_10
        {
            get { return GetPropertyValue<String>("Column_10"); }
            set { SetPropertyValue("Column_10", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CategoryTableID
        {
            get { return GetPropertyValue<String>("CategoryTableID"); }
            set { SetPropertyValue("CategoryTableID", value); }
        }
    }

    [Table("[EntryRecordForm]", DbType.SqlServer)]
    public  partial class EntryRecordFormSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[EntryRecordForm]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[EntryRecordForm]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(EntryRecordFormSet),DbType.SqlServer,"[EntryRecordForm]",fields);
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ID = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.OnlyPrimaryKey, "[ID]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase unit = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[unit]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase name = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[name]");

        /// <summary>
        /// 材料名称
        /// </summary>
        public static readonly FieldBase MaterialName = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[MaterialName]");

        /// <summary>
        /// 录入时间
        /// </summary>
        public static readonly FieldBase CreateDate = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[CreateDate]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Remark = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[Remark]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_7 = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[Column_7]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_8 = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[Column_8]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_9 = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[Column_9]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_10 = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[Column_10]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CategoryTableID = new FieldBase(DbType.SqlServer, "[EntryRecordForm]", FieldType.Common, "[CategoryTableID]");
    }

}
