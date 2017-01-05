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
    [Table("[View_CRJStatistics]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TF_ChuRuJingStatistics : EntityBase
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
        public string Sex
        {
            get { return GetPropertyValue<string>("Sex"); }
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
        /// 身份证
        /// </summary>
        public string IdentityCardNumber
        {
            get { return GetPropertyValue<string>("IdentityCardNumber"); }
            set { SetPropertyValue("IdentityCardNumber", value); }
        }
        /// <summary>
        /// 证件数
        /// </summary>
        public string TotalCertificate
        {
            get { return GetPropertyValue<string>("TotalCertificate"); }
            set { SetPropertyValue("TotalCertificate", value); }
        }

        /// <summary>
        /// 护照数量
        /// </summary>
        public string TotalHZ
        {
            get { return GetPropertyValue<string>("TotalHZ"); }
            set { SetPropertyValue("TotalHZ", value); }
        }
        /// <summary>
        /// 港澳通行证数量
        /// </summary>
        public string TotalGA
        {
            get { return GetPropertyValue<string>("TotalGA"); }
            set { SetPropertyValue("TotalGA", value); }
        }
        /// <summary>
        /// 台湾通行证数量
        /// </summary>
        public string TotalTW
        {
            get { return GetPropertyValue<string>("TotalTW"); }
            set { SetPropertyValue("TotalTW", value); }
        }

    }

    [Table("[View_CRJStatistics]", DbType.SqlServer)]
    public partial class TF_ChuRuJingStatisticsSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer, "[View_CRJStatistics]", fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer, "[View_CRJStatistics]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[View_CRJStatistics]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 姓名
        /// </summary>
        public static readonly FieldBase TrueName = new FieldBase(DbType.SqlServer, "[View_CRJStatistics]", FieldType.Common, "[TrueName]");

        /// <summary>
        /// 性别
        /// </summary>
        public static readonly FieldBase Sex = new FieldBase(DbType.SqlServer, "[View_CRJStatistics]", FieldType.Common, "[Sex]");

        /// <summary>
        /// 单位
        /// </summary>
        public static readonly FieldBase Units = new FieldBase(DbType.SqlServer, "[View_CRJStatistics]", FieldType.Common, "[Units]");

        /// <summary>
        /// 身份证号码
        /// </summary>
        public static readonly FieldBase IdentityCardNumber = new FieldBase(DbType.SqlServer, "[View_CRJStatistics]", FieldType.Common, "[IdentityCardNumber]");

        /// <summary>
        /// 总数量
        /// </summary>
        public static readonly FieldBase TotalCertificate = new FieldBase(DbType.SqlServer, "[View_CRJStatistics]", FieldType.Common, "[TotalCertificate]");

        /// <summary>
        /// 护照数量
        /// </summary>
        public static readonly FieldBase TotalHZ = new FieldBase(DbType.SqlServer, "[View_CRJStatistics]", FieldType.Common, "[TotalHZ]");

        /// <summary>
        /// 港澳通行证数量
        /// </summary>
        public static readonly FieldBase TotalGA = new FieldBase(DbType.SqlServer, "[View_CRJStatistics]", FieldType.Common, "[TotalGA]");

        /// <summary>
        /// 台湾通行证数量
        /// </summary>
        public static readonly FieldBase TotalTW = new FieldBase(DbType.SqlServer, "[View_CRJStatistics]", FieldType.Common, "[TotalTW]");

    }
}
