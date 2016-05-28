using System;
using Moon.Orm;

namespace e3net.Mode
{
    /// <summary>
    /// 基础数据类别表对应的值
    /// </summary>
    [Table("[Bascharvalue]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(String), "CharId")]
    public partial class Bascharvalue : EntityBase
    {

        /// <summary>
        /// 
        /// </summary>
        public String CharId
        {
            get { return GetPropertyValue<String>("CharId"); }
            set { SetPropertyValue("CharId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CharTypeId
        {
            get { return GetPropertyValue<String>("CharTypeId"); }
            set { SetPropertyValue("CharTypeId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CharName
        {
            get { return GetPropertyValue<String>("CharName"); }
            set { SetPropertyValue("CharName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? Is_Delete
        {
            get { return GetPropertyValue<Boolean?>("Is_Delete"); }
            set { SetPropertyValue("Is_Delete", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Boolean? Status
        {
            get { return GetPropertyValue<Boolean?>("Status"); }
            set { SetPropertyValue("Status", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Int32? SerialNo
        {
            get { return GetPropertyValue<Int32?>("SerialNo"); }
            set { SetPropertyValue("SerialNo", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CharNumber
        {
            get { return GetPropertyValue<String>("CharNumber"); }
            set { SetPropertyValue("CharNumber", value); }
        }
    }

    [Table("[Bascharvalue]", DbType.SqlServer)]
    public  partial class BascharvalueSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[Bascharvalue]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[Bascharvalue]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(BascharvalueSet),DbType.SqlServer,"[Bascharvalue]",fields);
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CharId = new FieldBase(DbType.SqlServer, "[Bascharvalue]", FieldType.OnlyPrimaryKey, "[CharId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CharTypeId = new FieldBase(DbType.SqlServer, "[Bascharvalue]", FieldType.Common, "[CharTypeId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CharName = new FieldBase(DbType.SqlServer, "[Bascharvalue]", FieldType.Common, "[CharName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Is_Delete = new FieldBase(DbType.SqlServer, "[Bascharvalue]", FieldType.Common, "[Is_Delete]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Status = new FieldBase(DbType.SqlServer, "[Bascharvalue]", FieldType.Common, "[Status]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase SerialNo = new FieldBase(DbType.SqlServer, "[Bascharvalue]", FieldType.Common, "[SerialNo]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CharNumber = new FieldBase(DbType.SqlServer, "[Bascharvalue]", FieldType.Common, "[CharNumber]");
    }

}
