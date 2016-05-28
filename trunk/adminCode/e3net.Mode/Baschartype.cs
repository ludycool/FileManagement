using System;
using Moon.Orm;

namespace e3net.Mode
{
    /// <summary>
    /// 基础数据类别表
    /// </summary>
    [Table("[Baschartype]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(String), "CharTypeId")]
    public partial class Baschartype : EntityBase
    {

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
        public String CharTypeName
        {
            get { return GetPropertyValue<String>("CharTypeName"); }
            set { SetPropertyValue("CharTypeName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CharTypeNum
        {
            get { return GetPropertyValue<String>("CharTypeNum"); }
            set { SetPropertyValue("CharTypeNum", value); }
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
        public Boolean? IsVisible
        {
            get { return GetPropertyValue<Boolean?>("IsVisible"); }
            set { SetPropertyValue("IsVisible", value); }
        }
    }

    [Table("[Baschartype]", DbType.SqlServer)]
    public  partial class BaschartypeSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[Baschartype]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[Baschartype]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(BaschartypeSet),DbType.SqlServer,"[Baschartype]",fields);
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CharTypeId = new FieldBase(DbType.SqlServer, "[Baschartype]", FieldType.OnlyPrimaryKey, "[CharTypeId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CharTypeName = new FieldBase(DbType.SqlServer, "[Baschartype]", FieldType.Common, "[CharTypeName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CharTypeNum = new FieldBase(DbType.SqlServer, "[Baschartype]", FieldType.Common, "[CharTypeNum]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Is_Delete = new FieldBase(DbType.SqlServer, "[Baschartype]", FieldType.Common, "[Is_Delete]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Status = new FieldBase(DbType.SqlServer, "[Baschartype]", FieldType.Common, "[Status]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase SerialNo = new FieldBase(DbType.SqlServer, "[Baschartype]", FieldType.Common, "[SerialNo]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase IsVisible = new FieldBase(DbType.SqlServer, "[Baschartype]", FieldType.Common, "[IsVisible]");
    }

}
