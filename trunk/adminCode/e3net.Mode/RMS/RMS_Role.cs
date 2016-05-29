using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.RMS
{
    /// <summary>
    /// 角色表
    /// </summary>
    [Table("[RMS_Role]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class RMS_Role : EntityBase
    {

        /// <summary>
        /// 
        /// </summary>
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String RoleName
        {
            get { return GetPropertyValue<String>("RoleName"); }
            set { SetPropertyValue("RoleName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String CreateBy
        {
            get { return GetPropertyValue<String>("CreateBy"); }
            set { SetPropertyValue("CreateBy", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? CreateTime
        {
            get { return GetPropertyValue<DateTime?>("CreateTime"); }
            set { SetPropertyValue("CreateTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String ModifyBy
        {
            get { return GetPropertyValue<String>("ModifyBy"); }
            set { SetPropertyValue("ModifyBy", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? ModifyTime
        {
            get { return GetPropertyValue<DateTime?>("ModifyTime"); }
            set { SetPropertyValue("ModifyTime", value); }
        }

        /// <summary>
        /// 角色类型（1管理员）
        /// </summary>
        public Int32? RoleTypes
        {
            get { return GetPropertyValue<Int32?>("RoleTypes"); }
            set { SetPropertyValue("RoleTypes", value); }
        }
    }

    [Table("[RMS_Role]", DbType.SqlServer)]
    public  partial class RMS_RoleSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_Role]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_Role]");
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase RoleName = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[RoleName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[Remarks]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateBy = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[CreateBy]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ModifyBy = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[ModifyBy]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[ModifyTime]");

        /// <summary>
        /// 角色类型（1管理员）
        /// </summary>
        public static readonly FieldBase RoleTypes = new FieldBase(DbType.SqlServer, "[RMS_Role]", FieldType.Common, "[RoleTypes]");
    }

}
