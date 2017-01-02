using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.FileManagementDB
{
    /// <summary>
    /// 人员档案借用单
    /// </summary>
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

        /// <summary>
        /// 
        /// </summary>
        public String DepartmentId
        {
            get { return GetPropertyValue<String>("DepartmentId"); }
            set { SetPropertyValue("DepartmentId", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String SubmitState
        {
            get { return GetPropertyValue<String>("SubmitState"); }
            set { SetPropertyValue("SubmitState", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String SignPeople
        {
            get { return GetPropertyValue<String>("SignPeople"); }
            set { SetPropertyValue("SignPeople", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? SignTime
        {
            get { return GetPropertyValue<DateTime?>("SignTime"); }
            set { SetPropertyValue("SignTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String Modified
        {
            get { return GetPropertyValue<String>("Modified"); }
            set { SetPropertyValue("Modified", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public DateTime? ModifiedTime
        {
            get { return GetPropertyValue<DateTime?>("ModifiedTime"); }
            set { SetPropertyValue("ModifiedTime", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public byte[] signatureimage
        {
            get { return GetPropertyValue<byte[]>("signatureimage"); }
            set { SetPropertyValue("signatureimage", value); }
        }
    }

    [Table("[TF_PersonnelFile_Borrow]", DbType.SqlServer)]
    public  partial class TF_PersonnelFile_BorrowSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TF_PersonnelFile_Borrow]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TF_PersonnelFile_Borrow]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(TF_PersonnelFile_BorrowSet),DbType.SqlServer,"[TF_PersonnelFile_Borrow]",fields);
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

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase DepartmentId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[DepartmentId]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase SubmitState = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[SubmitState]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase SignPeople = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[SignPeople]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase SignTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[SignTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase Modified = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[Modified]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ModifiedTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[ModifiedTime]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase signatureimage = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Borrow]", FieldType.Common, "[signatureimage]");
    }

}
