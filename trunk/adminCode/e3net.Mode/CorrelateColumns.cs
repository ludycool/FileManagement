using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace DefaultConnection
{
    /// <summary>
    /// 记录导出关联字段
    /// </summary>
    [Table("[CorrelateColumns]", DbType.SqlServer)]

    public partial class CorrelateColumns : EntityBase
    {

        /// <summary>
        /// 主键
        /// </summary>
        public String ID
        {
            get { return GetPropertyValue<String>("ID"); }
            set { SetPropertyValue("ID", value); }
        }

        /// <summary>
        /// 住列的iD
        /// </summary>
        public String ColumnChartsID
        {
            get { return GetPropertyValue<String>("ColumnChartsID"); }
            set { SetPropertyValue("ColumnChartsID", value); }
        }

        /// <summary>
        /// 关联列的主键
        /// </summary>
        public String ChildColumnChartsID
        {
            get { return GetPropertyValue<String>("ChildColumnChartsID"); }
            set { SetPropertyValue("ChildColumnChartsID", value); }
        }

        /// <summary>
        /// 关联表id
        /// </summary>
        public String MainAssociationID
        {
            get { return GetPropertyValue<String>("MainAssociationID"); }
            set { SetPropertyValue("MainAssociationID", value); }
        }
    }

    [Table("[CorrelateColumns]", DbType.SqlServer)]
    public  partial class CorrelateColumnsSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[CorrelateColumns]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[CorrelateColumns]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(CorrelateColumnsSet),DbType.SqlServer,"[CorrelateColumns]",fields);
        }

        /// <summary>
        /// 主键
        /// </summary>
        public static readonly FieldBase ID = new FieldBase(DbType.SqlServer, "[CorrelateColumns]", FieldType.Common, "[ID]");

        /// <summary>
        /// 住列的iD
        /// </summary>
        public static readonly FieldBase ColumnChartsID = new FieldBase(DbType.SqlServer, "[CorrelateColumns]", FieldType.Common, "[ColumnChartsID]");

        /// <summary>
        /// 关联列的主键
        /// </summary>
        public static readonly FieldBase ChildColumnChartsID = new FieldBase(DbType.SqlServer, "[CorrelateColumns]", FieldType.Common, "[ChildColumnChartsID]");

        /// <summary>
        /// 关联表id
        /// </summary>
        public static readonly FieldBase MainAssociationID = new FieldBase(DbType.SqlServer, "[CorrelateColumns]", FieldType.Common, "[MainAssociationID]");
    }

}
