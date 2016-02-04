using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.FileManagementDB
{

    [Table("[TF_PersonnelFile_Transmitting_Out]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TF_PersonnelFile_Transmitting_Out : EntityBase
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
        /// 转递人
        /// </summary>
        public String TransmittingMan
        {
            get { return GetPropertyValue<String>("TransmittingMan"); }
            set { SetPropertyValue("TransmittingMan", value); }
        }

        /// <summary>
        /// 字
        /// </summary>
        public String Series
        {
            get { return GetPropertyValue<String>("Series"); }
            set { SetPropertyValue("Series", value); }
        }

        /// <summary>
        /// 号
        /// </summary>
        public String Nos
        {
            get { return GetPropertyValue<String>("Nos"); }
            set { SetPropertyValue("Nos", value); }
        }

        /// <summary>
        /// 正本（卷）
        /// </summary>
        public Int32? OriginalCount
        {
            get { return GetPropertyValue<Int32?>("OriginalCount"); }
            set { SetPropertyValue("OriginalCount", value); }
        }

        /// <summary>
        /// 副本（卷）
        /// </summary>
        public Int32? DuplicateCount
        {
            get { return GetPropertyValue<Int32?>("DuplicateCount"); }
            set { SetPropertyValue("DuplicateCount", value); }
        }

        /// <summary>
        /// 材料（份）
        /// </summary>
        public Int32? MaterialCount
        {
            get { return GetPropertyValue<Int32?>("MaterialCount"); }
            set { SetPropertyValue("MaterialCount", value); }
        }

        /// <summary>
        /// 第一个人
        /// </summary>
        public String FistName
        {
            get { return GetPropertyValue<String>("FistName"); }
            set { SetPropertyValue("FistName", value); }
        }

        /// <summary>
        /// 人数
        /// </summary>
        public Int32? NumberS
        {
            get { return GetPropertyValue<Int32?>("NumberS"); }
            set { SetPropertyValue("NumberS", value); }
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
        /// 状态（2已转出，未操作0，关闭-1）
        /// </summary>
        public Int32? States
        {
            get { return GetPropertyValue<Int32?>("States"); }
            set { SetPropertyValue("States", value); }
        }

        /// <summary>
        /// 转递时间
        /// </summary>
        public DateTime? TransmittingTime
        {
            get { return GetPropertyValue<DateTime?>("TransmittingTime"); }
            set { SetPropertyValue("TransmittingTime", value); }
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

    [Table("[TF_PersonnelFile_Transmitting_Out]", DbType.SqlServer)]
    public  partial class TF_PersonnelFile_Transmitting_OutSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TF_PersonnelFile_Transmitting_Out]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TF_PersonnelFile_Transmitting_Out]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 转递人
        /// </summary>
        public static readonly FieldBase TransmittingMan = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[TransmittingMan]");

        /// <summary>
        /// 字
        /// </summary>
        public static readonly FieldBase Series = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[Series]");

        /// <summary>
        /// 号
        /// </summary>
        public static readonly FieldBase Nos = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[Nos]");

        /// <summary>
        /// 正本（卷）
        /// </summary>
        public static readonly FieldBase OriginalCount = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[OriginalCount]");

        /// <summary>
        /// 副本（卷）
        /// </summary>
        public static readonly FieldBase DuplicateCount = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[DuplicateCount]");

        /// <summary>
        /// 材料（份）
        /// </summary>
        public static readonly FieldBase MaterialCount = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[MaterialCount]");

        /// <summary>
        /// 第一个人
        /// </summary>
        public static readonly FieldBase FistName = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[FistName]");

        /// <summary>
        /// 人数
        /// </summary>
        public static readonly FieldBase NumberS = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[NumberS]");

        /// <summary>
        /// 创建人Id
        /// </summary>
        public static readonly FieldBase CreateManId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[CreateManId]");

        /// <summary>
        /// 创建人
        /// </summary>
        public static readonly FieldBase CreateMan = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[CreateMan]");

        /// <summary>
        /// 状态（2已转出，未操作0，关闭-1）
        /// </summary>
        public static readonly FieldBase States = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[States]");

        /// <summary>
        /// 转递时间
        /// </summary>
        public static readonly FieldBase TransmittingTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[TransmittingTime]");

        /// <summary>
        /// 添加时间
        /// </summary>
        public static readonly FieldBase CreateTime = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[CreateTime]");

        /// <summary>
        /// 是否删除
        /// </summary>
        public static readonly FieldBase isDeleted = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Transmitting_Out]", FieldType.Common, "[isDeleted]");
    }

}
