using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.FileManagementDB
{


    /// <summary>
    /// 生评
    /// </summary>
    [Table("[TF_LifeComments]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TF_LifeComments : EntityBase
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
        /// 姓名
        /// </summary>
        public String TrueName
        {
            get { return GetPropertyValue<String>("TrueName"); }
            set { SetPropertyValue("TrueName", value); }
        }

        /// <summary>
        /// 单位
        /// </summary>
        public String Units
        {
            get { return GetPropertyValue<String>("Units"); }
            set { SetPropertyValue("Units", value); }
        }

        /// <summary>
        /// 职务
        /// </summary>
        public String Duties
        {
            get { return GetPropertyValue<String>("Duties"); }
            set { SetPropertyValue("Duties", value); }
        }

        /// <summary>
        /// 性别（0--女；1--男）
        /// </summary>
        public Int32? Sex
        {
            get { return GetPropertyValue<Int32?>("Sex"); }
            set { SetPropertyValue("Sex", value); }
        }

        /// <summary>
        /// 籍贯
        /// </summary>
        public String NativePlace
        {
            get { return GetPropertyValue<String>("NativePlace"); }
            set { SetPropertyValue("NativePlace", value); }
        }

        /// <summary>
        /// 出生日期
        /// </summary>
        public DateTime? Birthday
        {
            get { return GetPropertyValue<DateTime?>("Birthday"); }
            set { SetPropertyValue("Birthday", value); }
        }

        /// <summary>
        /// 离退时间
        /// </summary>
        public DateTime? RetirementTime
        {
            get { return GetPropertyValue<DateTime?>("RetirementTime"); }
            set { SetPropertyValue("RetirementTime", value); }
        }

        /// <summary>
        /// 死亡时间
        /// </summary>
        public DateTime? DeathTime
        {
            get { return GetPropertyValue<DateTime?>("DeathTime"); }
            set { SetPropertyValue("DeathTime", value); }
        }

        /// <summary>
        /// 备注
        /// </summary>
        public String Remark
        {
            get { return GetPropertyValue<String>("Remark"); }
            set { SetPropertyValue("Remark", value); }
        }

        /// <summary>
        /// 摘要
        /// </summary>
        public String Summary
        {
            get { return GetPropertyValue<String>("Summary"); }
            set { SetPropertyValue("Summary", value); }
        }

        /// <summary>
        /// 详情
        /// </summary>
        public String Details
        {
            get { return GetPropertyValue<String>("Details"); }
            set { SetPropertyValue("Details", value); }
        }

        /// <summary>
        /// 创建人
        /// </summary>
        public String CreateMan
        {
            get { return GetPropertyValue<String>("CreateMan"); }
            set { SetPropertyValue("CreateMan", value); }
        }

        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime? CreateTime
        {
            get { return GetPropertyValue<DateTime?>("CreateTime"); }
            set { SetPropertyValue("CreateTime", value); }
        }

        /// <summary>
        /// 修改时间
        /// </summary>
        public DateTime? UpdateTime
        {
            get { return GetPropertyValue<DateTime?>("UpdateTime"); }
            set { SetPropertyValue("UpdateTime", value); }
        }
        /// <summary>
        /// 提交审核状态：0--未提交；1--已提交；2--审核中；3--通过审核
        /// </summary>
        public Int32? AprovalStates
        {
            get { return GetPropertyValue<Int32?>("AprovalStates"); }
            set { SetPropertyValue("AprovalStates", value); }
        }

        /// <summary>
        /// 提交审核状态：0--未提交；1--已提交；2--审核中；3--通过审核
        /// </summary>
        public string AprovalName
        {
            get { return GetPropertyValue<string>("AprovalName"); }
            set { SetPropertyValue("AprovalName", value); }
        }

        /// <summary>
        /// 审核时间
        /// </summary>
        public DateTime? AprovalTime
        {
            get { return GetPropertyValue<DateTime?>("AprovalTime"); }
            set { SetPropertyValue("AprovalTime", value); }
        }

        /// <summary>
        /// 状态（2已审核、开启1，未审核0，关闭-1）
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
        }

        /// <summary>
        /// 是否有效
        /// </summary>
        public Boolean? isValid
        {
            get { return GetPropertyValue<Boolean?>("isValid"); }
            set { SetPropertyValue("isValid", value); }
        }

        /// <summary>
        /// 是否删除
        /// </summary>
        public Boolean? isDeleted
        {
            get { return GetPropertyValue<Boolean?>("isDeleted"); }
            set { SetPropertyValue("isDeleted", value); }
        }
    }

    [Table("[TF_LifeComments]", DbType.SqlServer)]
    public partial class TF_LifeCommentsSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer, "[TF_LifeComments]", fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer, "[TF_LifeComments]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 姓名
        /// </summary>
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[TrueName]");

        /// <summary>
        /// 单位
        /// </summary>
        public static readonly FieldBase Units = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[Units]");

        /// <summary>
        /// 职务
        /// </summary>
        public static readonly FieldBase Duties = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[Duties]");

        /// <summary>
        /// 性别
        /// </summary>
        public static readonly FieldBase Sex = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[Sex]");

        /// <summary>
        /// 籍贯
        /// </summary>
        public static readonly FieldBase NativePlace = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[NativePlace]");

        /// <summary>
        /// 出生日期
        /// </summary>
        public static readonly FieldBase Birthday = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[Birthday]");

        /// <summary>
        /// 离退时间
        /// </summary>
        public static readonly FieldBase RetirementTime = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[RetirementTime]");

        /// <summary>
        /// 死亡时间
        /// </summary>
        public static readonly FieldBase DeathTime = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[DeathTime]");

        /// <summary>
        /// 备注
        /// </summary>
        public static readonly FieldBase Remark = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[Remark]");


        /// <summary>
        /// 摘要
        /// </summary>
        public static readonly FieldBase Summary = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[Summary]");

        /// <summary>
        /// 详情
        /// </summary>
        public static readonly FieldBase Details = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[Details]");

        /// <summary>
        /// 创建人
        /// </summary>
        public static readonly FieldBase CreateMan = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[CreateMan]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 修改时间
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 提交审核状态：0--未提交；1--已提交；2--审核中；3--通过审核
        /// </summary>
        public static readonly FieldBase AprovalStates = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[AprovalStates]");
        /// <summary>
        /// 审核人
        /// </summary>
        public static readonly FieldBase AprovalName = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[AprovalName]");
        /// <summary>
        /// 审核时间
        /// </summary>
        public static readonly FieldBase AprovalTime = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[AprovalTime]");

        /// <summary>
        /// 状态（2已审核、开启1，未审核0，关闭-1）
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[States]");

        /// <summary>
        /// 是否有效
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TF_LifeComments]", FieldType.Common, "[isDeleted]");


    }

}
