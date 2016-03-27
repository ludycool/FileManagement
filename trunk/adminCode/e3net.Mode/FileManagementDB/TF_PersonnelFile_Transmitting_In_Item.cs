using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.FileManagementDB
{

    [Table("[TF_PersonnelFile_Transmitting_In_Item]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TF_PersonnelFile_Transmitting_In_Item : EntityBase
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
        /// 转递单Id
        /// </summary>
        public Guid? OwnerId
        {
            get { return GetPropertyValue<Guid?>("OwnerId"); }
            set { SetPropertyValue("OwnerId", value); }
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
        /// 姓名
        /// </summary>
        public String RealName
        {
            get { return GetPropertyValue<String>("RealName"); }
            set { SetPropertyValue("RealName", value); }
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
        /// 转递原因
        /// </summary>
        public String Reasons
        {
            get { return GetPropertyValue<String>("Reasons"); }
            set { SetPropertyValue("Reasons", value); }
        }

        /// <summary>
        /// 正本（卷）
        /// </summary>
        public Int32 OriginalCount
        {
            get { return GetPropertyValue<Int32>("OriginalCount"); }
            set { SetPropertyValue("OriginalCount", value); }
        }

        /// <summary>
        /// 副本（卷）
        /// </summary>
        public Int32 DuplicateCount
        {
            get { return GetPropertyValue<Int32>("DuplicateCount"); }
            set { SetPropertyValue("DuplicateCount", value); }
        }

        /// <summary>
        /// 材料（份）
        /// </summary>
        public Int32 MaterialCount
        {
            get { return GetPropertyValue<Int32>("MaterialCount"); }
            set { SetPropertyValue("MaterialCount", value); }
        }
    }

    [Table("[TF_PersonnelFile_Transmitting_In_Item]", DbType.SqlServer)]
    public  partial class TF_PersonnelFile_Transmitting_In_ItemSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TF_PersonnelFile_Transmitting_In_Item]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TF_PersonnelFile_Transmitting_In_Item]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 转递单Id
        /// </summary>
        public static readonly FieldBase OwnerId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.Common, "[OwnerId]");

        /// <summary>
        /// 人员档案Id
        /// </summary>
        public static readonly FieldBase PersonnelFileId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.Common, "[PersonnelFileId]");

        /// <summary>
        /// 姓名
        /// </summary>
        public static readonly FieldBase RealName = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.Common, "[RealName]");

        /// <summary>
        /// 单位
        /// </summary>
        public static readonly FieldBase Units = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.Common, "[Units]");

        /// <summary>
        /// 职务
        /// </summary>
        public static readonly FieldBase Duties = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.Common, "[Duties]");

        /// <summary>
        /// 转递原因
        /// </summary>
        public static readonly FieldBase Reasons = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.Common, "[Reasons]");

        /// <summary>
        /// 正本（卷）
        /// </summary>
        public static readonly FieldBase OriginalCount = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.Common, "[OriginalCount]");

        /// <summary>
        /// 副本（卷）
        /// </summary>
        public static readonly FieldBase DuplicateCount = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.Common, "[DuplicateCount]");

        /// <summary>
        /// 材料（份）
        /// </summary>
        public static readonly FieldBase MaterialCount = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_In_Item]", FieldType.Common, "[MaterialCount]");
    }

}
