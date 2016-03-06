using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace DefaultConnection
{

    [Table("[VcorrelateColumns]", DbType.SqlServer)]

    public partial class VcorrelateColumns : EntityBase
    {

        /// <summary>
        /// 
        /// </summary>
        public String ID
        {
            get { return GetPropertyValue<String>("ID"); }
            set { SetPropertyValue("ID", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String ColumnChartsID
        {
            get { return GetPropertyValue<String>("ColumnChartsID"); }
            set { SetPropertyValue("ColumnChartsID", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String ChildColumnChartsID
        {
            get { return GetPropertyValue<String>("ChildColumnChartsID"); }
            set { SetPropertyValue("ChildColumnChartsID", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String MainAssociationID
        {
            get { return GetPropertyValue<String>("MainAssociationID"); }
            set { SetPropertyValue("MainAssociationID", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String yuanlai
        {
            get { return GetPropertyValue<String>("yuanlai"); }
            set { SetPropertyValue("yuanlai", value); }
        }

        /// <summary>
        /// 
        /// </summary>
        public String guanlian
        {
            get { return GetPropertyValue<String>("guanlian"); }
            set { SetPropertyValue("guanlian", value); }
        }
    }

    [Table("[VcorrelateColumns]", DbType.SqlServer)]
    public  partial class VcorrelateColumnsSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[VcorrelateColumns]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[VcorrelateColumns]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(VcorrelateColumnsSet),DbType.SqlServer,"[VcorrelateColumns]",fields);
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ID = new FieldBase(DbType.SqlServer, "[VcorrelateColumns]", FieldType.Common, "[ID]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ColumnChartsID = new FieldBase(DbType.SqlServer, "[VcorrelateColumns]", FieldType.Common, "[ColumnChartsID]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ChildColumnChartsID = new FieldBase(DbType.SqlServer, "[VcorrelateColumns]", FieldType.Common, "[ChildColumnChartsID]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase MainAssociationID = new FieldBase(DbType.SqlServer, "[VcorrelateColumns]", FieldType.Common, "[MainAssociationID]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase yuanlai = new FieldBase(DbType.SqlServer, "[VcorrelateColumns]", FieldType.Common, "[yuanlai]");

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase guanlian = new FieldBase(DbType.SqlServer, "[VcorrelateColumns]", FieldType.Common, "[guanlian]");
    }

}
