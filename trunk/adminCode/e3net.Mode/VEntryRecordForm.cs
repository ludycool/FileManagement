using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace DefaultConnection
{

    [Table("[VEntryRecordForm]", DbType.SqlServer)]

    public partial class VEntryRecordForm : EntityBase
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
        /// 
        /// </summary>
        public String MaterialName
        {
            get { return GetPropertyValue<String>("MaterialName"); }
            set { SetPropertyValue("MaterialName", value); }
        }

        /// <summary>
        /// 
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

        /// <summary>
        /// 
        /// </summary>
        public String ChineseName
        {
            get { return GetPropertyValue<String>("ChineseName"); }
            set { SetPropertyValue("ChineseName", value); }
        }
    }

    [Table("[VEntryRecordForm]", DbType.SqlServer)]
    public  partial class VEntryRecordFormSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[VEntryRecordForm]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[VEntryRecordForm]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(VEntryRecordFormSet),DbType.SqlServer,"[VEntryRecordForm]",fields);
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ID = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[ID]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase unit = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[unit]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase name = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[name]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase MaterialName = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[MaterialName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateDate = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[CreateDate]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Remark = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[Remark]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_7 = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[Column_7]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_8 = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[Column_8]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_9 = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[Column_9]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Column_10 = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[Column_10]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CategoryTableID = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[CategoryTableID]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ChineseName = new FieldBase(DbType.SqlServer, "[VEntryRecordForm]", FieldType.Common, "[ChineseName]");
    }

}
