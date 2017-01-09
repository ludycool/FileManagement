using Moon.Orm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode
{
    /// <summary>
    /// 操作日志
    /// </summary>
    [Table("[SysOperateLog]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class SysOperateLog : EntityBase
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
        /// 操作人ID
        /// </summary>
        public String UserId
        {
            get { return GetPropertyValue<String>("UserId"); }
            set { SetPropertyValue("UserId", value); }
        }

        /// <summary>
        /// 操作人
        /// </summary>
        public String TrueName
        {
            get { return GetPropertyValue<String>("TrueName"); }
            set { SetPropertyValue("TrueName", value); }
        }

        /// <summary>
        /// 操作名称
        /// </summary>
        public String OperateName
        {
            get { return GetPropertyValue<String>("OperateName"); }
            set { SetPropertyValue("OperateName", value); }
        }

        /// <summary>
        /// 操作时间
        /// </summary>
        public DateTime? OperateTime
        {
            get { return GetPropertyValue<DateTime?>("OperateTime"); }
            set { SetPropertyValue("OperateTime", value); }
        }

        /// <summary>
        /// 操作内容
        /// </summary>
        public String OperateConten
        {
            get { return GetPropertyValue<String>("OperateConten"); }
            set { SetPropertyValue("OperateConten", value); }
        }

        /// <summary>
        /// 操作IP地址
        /// </summary>
        public String OperateIP
        {
            get { return GetPropertyValue<String>("OperateIP"); }
            set { SetPropertyValue("OperateIP", value); }
        }

        /// <summary>
        /// 是否删除
        /// </summary>
        public bool? isDeleted
        {
            get { return GetPropertyValue<bool?>("isDeleted"); }
            set { SetPropertyValue("isDeleted", value); }
        }

        /// <summary>
        /// 备注
        /// </summary>
        public string Remark
        {
            get { return GetPropertyValue<string>("Remark"); }
            set { SetPropertyValue("Remark", value); }
        }

        /// <summary>
        /// 操作是否成功
        /// </summary>
        public bool? IsSuccess
        {
            get { return GetPropertyValue<bool?>("IsSuccess"); }
            set { SetPropertyValue("IsSuccess", value); }
        }
    }

    [Table("[SysOperateLog]", DbType.SqlServer)]
    public partial class SysOperateLogSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer, "[SysOperateLog]", fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer, "[SysOperateLog]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 操作人ID
        /// </summary>
        public static readonly FieldBase UserId = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.Common, "[UserId]");

        /// <summary>
        /// 操作人姓名
        /// </summary>
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.Common, "[TrueName]");

        /// <summary>
        /// 操作名称
        /// </summary>
        public static readonly FieldBase OperateName = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.Common, "[OperateName]");

        /// <summary>
        /// 操作时间
        /// </summary>
        public static readonly FieldBase OperateTime = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.Common, "[OperateTime]");

        /// <summary>
        /// 操作内容
        /// </summary>
        public static readonly FieldBase OperateConten = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.Common, "[OperateConten]");

        /// <summary>
        /// 操作IP
        /// </summary>
        public static readonly FieldBase OperateIP = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.Common, "[OperateIP]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.Common, "[isDeleted]");

        /// <summary>
        /// 备注
        /// </summary>
        public static readonly FieldBase Remark = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.Common, "[Remark]");

        /// <summary>
        /// 是否成功
        /// </summary>
        public static readonly FieldBase IsSuccess = new FieldBase(DbType.SqlServer, "[SysOperateLog]", FieldType.Common, "[IsSuccess]");

    }

    public enum OperatEnumName
    {
        登录 = 0,
        新增 = 1,
        修改 = 2,
        删除 = 3,
        提交 = 4,
        审核 = 5,
        导入 = 6,
        分配角色 = 7,
        分配权限 = 8,
        分配操作 = 9,
        查看文档 = 10,
        分配转入单位 = 11,
        分配转出单位 = 12,
        档案转入 = 13,
        档案转出 = 14,
        退回 = 15,
        归还 = 16
    }
}
