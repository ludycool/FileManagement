using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.FileManagementDB
{

    /// <summary>
    /// 人员档案
    /// </summary>
    [Table("[TF_PersonnelFile]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TF_PersonnelFile : EntityBase
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
        /// 名称
        /// </summary>
        public String TName
        {
            get { return GetPropertyValue<String>("TName"); }
            set { SetPropertyValue("TName", value); }
        }

        /// <summary>
        /// 姓名
        /// </summary>
        public String RealName
        {
            get { return GetPropertyValue<String>("RealName"); }
            set { SetPropertyValue("RealName", value); }
        }

        /// <summary>
        /// 类别
        /// </summary>
        public String Category
        {
            get { return GetPropertyValue<String>("Category"); }
            set { SetPropertyValue("Category", value); }
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
        /// 摘要
        /// </summary>
        public String Summary
        {
            get { return GetPropertyValue<String>("Summary"); }
            set { SetPropertyValue("Summary", value); }
        }

        /// <summary>
        /// 存放位置
        /// </summary>
        public String location
        {
            get { return GetPropertyValue<String>("location"); }
            set { SetPropertyValue("location", value); }
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

    [Table("[TF_PersonnelFile]", DbType.SqlServer)]
    public  partial class TF_PersonnelFileSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TF_PersonnelFile]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TF_PersonnelFile]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 名称
        /// </summary>
        public static readonly FieldBase TName = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[TName]");

        /// <summary>
        /// 姓名
        /// </summary>
        public static readonly FieldBase RealName = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[RealName]");

        /// <summary>
        /// 类别
        /// </summary>
        public static readonly FieldBase Category = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[Category]");

        /// <summary>
        /// 单位
        /// </summary>
        public static readonly FieldBase Units = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[Units]");

        /// <summary>
        /// 职务
        /// </summary>
        public static readonly FieldBase Duties = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[Duties]");

        /// <summary>
        /// 摘要
        /// </summary>
        public static readonly FieldBase Summary = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[Summary]");

        /// <summary>
        /// 存放位置
        /// </summary>
        public static readonly FieldBase location = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[location]");

        /// <summary>
        /// 创建人
        /// </summary>
        public static readonly FieldBase CreateMan = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[CreateMan]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 修改时间
        /// </summary>
        public static readonly FieldBase UpdateTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[UpdateTime]");

        /// <summary>
        /// 是否有效
        /// </summary>
        public static readonly FieldBase isValid = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[isValid]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile]", FieldType.Common, "[isDeleted]");
    }

}
