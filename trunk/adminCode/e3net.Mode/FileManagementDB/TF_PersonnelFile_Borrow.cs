using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.FileManagementDB
{

    [Table("[TF_PersonnelFile_Borrow]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TF_PersonnelFile_Borrow : EntityBase
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
        /// 借用人姓名
        /// </summary>
        public String BorrowMan
        {
            get { return GetPropertyValue<String>("BorrowMan"); }
            set { SetPropertyValue("BorrowMan", value); }
        }

        /// <summary>
        /// 借用人单位
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
        /// 借用内容
        /// </summary>
        public String BorrowDetail
        {
            get { return GetPropertyValue<String>("BorrowDetail"); }
            set { SetPropertyValue("BorrowDetail", value); }
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
        /// 借用时间
        /// </summary>
        public String BorrowTime
        {
            get { return GetPropertyValue<String>("BorrowTime"); }
            set { SetPropertyValue("BorrowTime", value); }
        }

        /// <summary>
        /// 归还时间
        /// </summary>
        public String ReturnTime
        {
            get { return GetPropertyValue<String>("ReturnTime"); }
            set { SetPropertyValue("ReturnTime", value); }
        }

        /// <summary>
        /// 状态（2已借出，3已归还，未操作0，关闭-1）
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

    [Table("[TF_PersonnelFile_Borrow]", DbType.SqlServer)]
    public  partial class TF_PersonnelFile_BorrowSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TF_PersonnelFile_Borrow]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TF_PersonnelFile_Borrow]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 借用人姓名
        /// </summary>
        public static readonly FieldBase BorrowMan = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[BorrowMan]");

        /// <summary>
        /// 借用人单位
        /// </summary>
        public static readonly FieldBase Units = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[Units]");

        /// <summary>
        /// 人员档案Id
        /// </summary>
        public static readonly FieldBase PersonnelFileId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[PersonnelFileId]");

        /// <summary>
        /// 档案姓名
        /// </summary>
        public static readonly FieldBase PersonnelFile = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[PersonnelFile]");

        /// <summary>
        /// 借用内容
        /// </summary>
        public static readonly FieldBase BorrowDetail = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[BorrowDetail]");

        /// <summary>
        /// 备注
        /// </summary>
        public static readonly FieldBase Remarks = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[Remarks]");

        /// <summary>
        /// 创建人Id
        /// </summary>
        public static readonly FieldBase CreateManId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[CreateManId]");

        /// <summary>
        /// 创建人
        /// </summary>
        public static readonly FieldBase CreateMan = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[CreateMan]");

        /// <summary>
        /// 借用时间
        /// </summary>
        public static readonly FieldBase BorrowTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[BorrowTime]");

        /// <summary>
        /// 归还时间
        /// </summary>
        public static readonly FieldBase ReturnTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[ReturnTime]");

        /// <summary>
        /// 状态（2已借出，3已归还，未操作0，关闭-1）
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[States]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[isDeleted]");
    }

}
