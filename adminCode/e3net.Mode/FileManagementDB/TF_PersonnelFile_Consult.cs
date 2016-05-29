using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.FileManagementDB
{
    /// <summary>
    /// 人员档案查阅单
    /// </summary>
    [Table("[TF_PersonnelFile_Consult]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TF_PersonnelFile_Consult : EntityBase
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
        /// 查阅人姓名
        /// </summary>
        public String ConsultMan
        {
            get { return GetPropertyValue<String>("ConsultMan"); }
            set { SetPropertyValue("ConsultMan", value); }
        }

        /// <summary>
        /// 查阅人单位
        /// </summary>
        public String Units
        {
            get { return GetPropertyValue<String>("Units"); }
            set { SetPropertyValue("Units", value); }
        }

        /// <summary>
        /// 人员档案Id
        /// </summary>
        public Guid? PersonnelFileId
        {
            get { return GetPropertyValue<Guid?>("PersonnelFileId"); }
            set { SetPropertyValue("PersonnelFileId", value); }
        }

        /// <summary>
        /// 档案姓名
        /// </summary>
        public String PersonnelFile
        {
            get { return GetPropertyValue<String>("PersonnelFile"); }
            set { SetPropertyValue("PersonnelFile", value); }
        }

        /// <summary>
        /// 查阅内容
        /// </summary>
        public String ConsultDetail
        {
            get { return GetPropertyValue<String>("ConsultDetail"); }
            set { SetPropertyValue("ConsultDetail", value); }
        }

        /// <summary>
        /// 备注
        /// </summary>
        public String Remarks
        {
            get { return GetPropertyValue<String>("Remarks"); }
            set { SetPropertyValue("Remarks", value); }
        }

        /// <summary>
        /// 创建人Id
        /// </summary>
        public Guid? CreateManId
        {
            get { return GetPropertyValue<Guid?>("CreateManId"); }
            set { SetPropertyValue("CreateManId", value); }
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
        /// 查阅时间
        /// </summary>
        public String ConsultTime
        {
            get { return GetPropertyValue<String>("ConsultTime"); }
            set { SetPropertyValue("ConsultTime", value); }
        }

        /// <summary>
        /// 状态（2已查阅，未操作0，关闭-1）
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
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
        /// 是否删除
        /// </summary>
        public Boolean? isDeleted
        {
            get { return GetPropertyValue<Boolean?>("isDeleted"); }
            set { SetPropertyValue("isDeleted", value); }
        }
    }

    [Table("[TF_PersonnelFile_Consult]", DbType.SqlServer)]
    public  partial class TF_PersonnelFile_ConsultSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TF_PersonnelFile_Consult]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TF_PersonnelFile_Consult]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 查阅人姓名
        /// </summary>
        public static readonly FieldBase ConsultMan = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[ConsultMan]");

        /// <summary>
        /// 查阅人单位
        /// </summary>
        public static readonly FieldBase Units = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[Units]");

        /// <summary>
        /// 人员档案Id
        /// </summary>
        public static readonly FieldBase PersonnelFileId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[PersonnelFileId]");

        /// <summary>
        /// 档案姓名
        /// </summary>
        public static readonly FieldBase PersonnelFile = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[PersonnelFile]");

        /// <summary>
        /// 查阅内容
        /// </summary>
        public static readonly FieldBase ConsultDetail = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[ConsultDetail]");

        /// <summary>
        /// 备注
        /// </summary>
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[Remarks]");

        /// <summary>
        /// 创建人Id
        /// </summary>
        public static readonly FieldBase CreateManId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[CreateManId]");

        /// <summary>
        /// 创建人
        /// </summary>
        public static readonly FieldBase CreateMan = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[CreateMan]");

        /// <summary>
        /// 查阅时间
        /// </summary>
        public static readonly FieldBase ConsultTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[ConsultTime]");

        /// <summary>
        /// 状态（2已查阅，未操作0，关闭-1）
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[States]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Consult]", FieldType.Common, "[isDeleted]");
    }

}
