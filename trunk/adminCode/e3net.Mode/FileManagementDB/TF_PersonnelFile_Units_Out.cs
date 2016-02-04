using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace e3net.Mode.FileManagementDB
{

    [Table("[TF_PersonnelFile_Units_Out]", DbType.SqlServer)]
    [TablesPrimaryKey(PrimaryKeyType.CustomerGUID, typeof(Guid), "Id")]
    public partial class TF_PersonnelFile_Units_Out : EntityBase
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
        /// 人员档案Id
        /// </summary>
        public Guid? PersonnelFileId
        {
            get { return GetPropertyValue<Guid?>("PersonnelFileId"); }
            set { SetPropertyValue("PersonnelFileId", value); }
        }

        /// <summary>
        /// 单位Id
        /// </summary>
        public Guid? UnitsId
        {
            get { return GetPropertyValue<Guid?>("UnitsId"); }
            set { SetPropertyValue("UnitsId", value); }
        }
    }

    [Table("[TF_PersonnelFile_Units_Out]", DbType.SqlServer)]
    public  partial class TF_PersonnelFile_Units_OutSet : MQLBase
    {
        public static new MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[TF_PersonnelFile_Units_Out]",fields);
        }
        public static new MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[TF_PersonnelFile_Units_Out]");
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase Id = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Units_Out]", FieldType.OnlyPrimaryKey, "[Id]");

        /// <summary>
        /// 人员档案Id
        /// </summary>
        public static readonly FieldBase PersonnelFileId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Units_Out]", FieldType.Common, "[PersonnelFileId]");

        /// <summary>
        /// 单位Id
        /// </summary>
        public static readonly FieldBase UnitsId = new FieldBase(DbType.SqlServer, "[TF_PersonnelFile_Units_Out]", FieldType.Common, "[UnitsId]");
    }

}
