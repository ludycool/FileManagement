using Moon.Orm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace e3net.Mode.FileManagementDB
{
    /// <summary>
    /// 出入境登记
    /// </summary>
    [Table("[TF_EntryAndExitRegistration]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TF_EntryAndExitRegistration : EntityBase
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
        /// 性别（1--男；0--女）
        /// </summary>
        public Int32? Sex
        {
            get { return GetPropertyValue<Int32?>("Sex"); }
            set { SetPropertyValue("Sex", value); }
        }

        /// <summary>
        /// 单位名称
        /// </summary>
        public String Units
        {
            get { return GetPropertyValue<String>("Units"); }
            set { SetPropertyValue("Units", value); }
        }

        /// <summary>
        /// 使用类型（1--保管；2--领用；3--归还；4--退回）
        /// </summary>
        public Int32? UseCategory
        {
            get { return GetPropertyValue<Int32?>("UseCategory"); }
            set { SetPropertyValue("UseCategory", value); }
        }

        /// <summary>
        /// 批文
        /// </summary>
        public String OfficialDocOrRemarks
        {
            get { return GetPropertyValue<String>("OfficialDocOrRemarks"); }
            set { SetPropertyValue("OfficialDocOrRemarks", value); }
        }

        /// <summary>
        /// 证件类型（1--护照；2--港澳通行证；3--台湾通行证）
        /// </summary>
        public Int32? CertificateCategory
        {
            get { return GetPropertyValue<Int32?>("CertificateCategory"); }
            set { SetPropertyValue("CertificateCategory", value); }
        }

        /// <summary>
        /// 证件号码
        /// </summary>
        public String CertificateNumber
        {
            get { return GetPropertyValue<String>("CertificateNumber"); }
            set { SetPropertyValue("CertificateNumber", value); }
        }

        /// <summary>
        /// 身份证号码
        /// </summary>
        public String IdentityCardNumber
        {
            get { return GetPropertyValue<String>("IdentityCardNumber"); }
            set { SetPropertyValue("IdentityCardNumber", value); }
        }

        /// <summary>
        /// 办理人单位
        /// </summary>
        public String ApproverUnit
        {
            get { return GetPropertyValue<String>("ApproverUnit"); }
            set { SetPropertyValue("ApproverUnit", value); }
        }

        /// <summary>
        /// 办理人
        /// </summary>
        public String Approver
        {
            get { return GetPropertyValue<String>("Approver"); }
            set { SetPropertyValue("Approver", value); }
        }

        /// <summary>
        /// 联系方式
        /// </summary>
        public String ContactInformation
        {
            get { return GetPropertyValue<String>("ContactInformation"); }
            set { SetPropertyValue("ContactInformation", value); }
        }

        /// <summary>
        /// 审核日期
        /// </summary>
        public DateTime? AprovalTime
        {
            get { return GetPropertyValue<DateTime?>("AprovalTime"); }
            set { SetPropertyValue("AprovalTime", value); }
        }

        /// <summary>
        /// 状态（-1;--未提交；0--待审核；1--审核通过；2--审核不通过）
        /// </summary>
        public Int32? ApprovalStates
        {
            get { return GetPropertyValue<Int32?>("ApprovalStates"); }
            set { SetPropertyValue("ApprovalStates", value); }
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
        /// 修改人
        /// </summary>
        public String UpdateMan
        {
            get { return GetPropertyValue<String>("UpdateMan"); }
            set { SetPropertyValue("UpdateMan", value); }
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
        /// 是否有效
        /// </summary>
        public bool? isValid
        {
            get { return GetPropertyValue<bool?>("isValid"); }
            set { SetPropertyValue("isValid", value); }
        }

        /// <summary>
        /// 是否删除
        /// </summary>
        public bool? isDeleted
        {
            get { return GetPropertyValue<bool?>("isDeleted"); }
            set { SetPropertyValue("isDeleted", value); }
        } /// <summary>
          /// 备注
          /// </summary>
        public string Remark
        {
            get { return GetPropertyValue<string>("Remark"); }
            set { SetPropertyValue("Remark", value); }
        }
    }


    [Table("[TF_EntryAndExitRegistration]", DbType.SqlServer)]
    public partial class TF_EntryAndExitRegistrationSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer, "[TF_EntryAndExitRegistration]", fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer, "[TF_EntryAndExitRegistration]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 姓名
        /// </summary>
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[TrueName]");

        /// <summary>
        /// 性别
        /// </summary>
        public static readonly FieldBase Sex = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[Sex]");

        /// <summary>
        /// 单位
        /// </summary>
        public static readonly FieldBase Units = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[Units]");

        /// <summary>
        /// 使用类型（1--保管；2--领用；3--归还；4--退回）
        /// </summary>
        public static readonly FieldBase UseCategory = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[UseCategory]");

        /// <summary>
        /// 批文
        /// </summary>
        public static readonly FieldBase OfficialDocOrRemarks = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[OfficialDocOrRemarks]");

        /// <summary>
        /// 证件类型（1--护照；2--港澳通行证；3--台湾通行证）
        /// </summary>
        public static readonly FieldBase CertificateCategory = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[CertificateCategory]");

        /// <summary>
        /// 证件号码
        /// </summary>
        public static readonly FieldBase CertificateNumber = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[CertificateNumber]");

        /// <summary>
        /// 身份证号码
        /// </summary>
        public static readonly FieldBase IdentityCardNumber = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[IdentityCardNumber]");

        /// <summary>
        /// 办理人单位
        /// </summary>
        public static readonly FieldBase ApproverUnit = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[ApproverUnit]");

        /// <summary>
        /// 办理人
        /// </summary>
        public static readonly FieldBase Approver = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[Approver]");

        /// <summary>
        /// 联系方式
        /// </summary>
        public static readonly FieldBase ContactInformation = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[ContactInformation]");

        /// <summary>
        /// 审核日期
        /// </summary>
        public static readonly FieldBase AprovalTime = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[AprovalTime]");

        /// <summary>
        /// 状态（0--待审核；1--审核通过；2--审核不通过）
        /// </summary>
        public static readonly FieldBase ApprovalStates = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[ApprovalStates]");

        /// <summary>
        /// 创建人
        /// </summary>
        public static readonly FieldBase CreateMan = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[CreateMan]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 修改人
        /// </summary>
        public static readonly FieldBase UpdateMan = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[UpdateMan]");

        /// <summary>
        /// 修改时间
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 是否有效
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[isDeleted]");
        /// <summary>
        /// 备注
        /// </summary>
        public static readonly FieldBase Remark = new FieldBase(DbType.SqlServer, "[TF_EntryAndExitRegistration]", FieldType.Common, "[Remark]");

    }

}
