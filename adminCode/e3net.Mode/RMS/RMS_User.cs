using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.RMS
{

    [Table("[RMS_User]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class RMS_User : EntityBase
    {

        /// <summary>
        /// 主键
        /// </summary>
        public Guid Id
        {
            get { return GetPropertyValue<Guid>("Id"); }
            set { SetPropertyValue("Id", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String LoginName
        {
            get { return GetPropertyValue<String>("LoginName"); }
            set { SetPropertyValue("LoginName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String TrueName
        {
            get { return GetPropertyValue<String>("TrueName"); }
            set { SetPropertyValue("TrueName", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Password
        {
            get { return GetPropertyValue<String>("Password"); }
            set { SetPropertyValue("Password", value); }
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
        public DateTime? ModifyTime
        {
            get { return GetPropertyValue<DateTime?>("ModifyTime"); }
            set { SetPropertyValue("ModifyTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public Guid? DepartmentId
        {
            get { return GetPropertyValue<Guid?>("DepartmentId"); }
            set { SetPropertyValue("DepartmentId", value); }
        }

        /// <summary>
        /// 用户类型 为1正常 姓名登录为0，身份证为2
        /// </summary>
        public Int32? UserType
        {
            get { return GetPropertyValue<Int32?>("UserType"); }
            set { SetPropertyValue("UserType", value); }
        }

        /// <summary>
        /// 办公电话
        /// </summary>
        public String Tel
        {
            get { return GetPropertyValue<String>("Tel"); }
            set { SetPropertyValue("Tel", value); }
        }

        /// <summary>
        /// 手机
        /// </summary>
        public String Phone
        {
            get { return GetPropertyValue<String>("Phone"); }
            set { SetPropertyValue("Phone", value); }
        }
    }

    [Table("[RMS_User]", DbType.SqlServer)]
    public  partial class RMS_UserSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[RMS_User]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[RMS_User]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase LoginName = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[LoginName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[TrueName]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Password = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[Password]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ModifyTime = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[ModifyTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase DepartmentId = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[DepartmentId]");

        /// <summary>
        /// 用户类型 为1正常 姓名登录为0，身份证为2
        /// </summary>
        public static readonly FieldBase UserType = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[UserType]");

        /// <summary>
        /// 办公电话
        /// </summary>
        public static readonly FieldBase Tel = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[Tel]");

        /// <summary>
        /// 手机
        /// </summary>
        public static readonly FieldBase Phone = new FieldBase(DbType.SqlServer, "[RMS_User]", FieldType.Common, "[Phone]");
    }

}
