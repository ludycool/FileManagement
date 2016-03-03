using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using Moon.Orm;

namespace DefaultConnection
{

    [Table("[MainAssociation]", DbType.SqlServer)]

    public partial class MainAssociation : EntityBase
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
        /// 主表id
        /// </summary>
        public String CategoryTableID
        {
            get { return GetPropertyValue<String>("CategoryTableID"); }
            set { SetPropertyValue("CategoryTableID", value); }
        }

        /// <summary>
        /// 关联表id
        /// </summary>
        public String ChildCategoryTableID
        {
            get { return GetPropertyValue<String>("ChildCategoryTableID"); }
            set { SetPropertyValue("ChildCategoryTableID", value); }
        }
    }

    [Table("[MainAssociation]", DbType.SqlServer)]
    public  partial class MainAssociationSet : MQLBase
    {
        public static  MQLBase Select(params FieldBase[] fields)
        {
            return MQLBase.Select(DbType.SqlServer,"[MainAssociation]",fields);
        }
        public static  MQLBase SelectAll()
        {
            return MQLBase.SelectAll(DbType.SqlServer,"[MainAssociation]");
        }
        public static MQLBase SelectAllBut(params FieldBase[] fields)
        {
            return MQLBase.SelectAllBut(typeof(MainAssociationSet),DbType.SqlServer,"[MainAssociation]",fields);
        }

        /// <summary>
        /// 
        /// </summary>
        public static readonly FieldBase ID = new FieldBase(DbType.SqlServer, "[MainAssociation]", FieldType.Common, "[ID]");

        /// <summary>
        /// 主表id
        /// </summary>
        public static readonly FieldBase CategoryTableID = new FieldBase(DbType.SqlServer, "[MainAssociation]", FieldType.Common, "[CategoryTableID]");

        /// <summary>
        /// 关联表id
        /// </summary>
        public static readonly FieldBase ChildCategoryTableID = new FieldBase(DbType.SqlServer, "[MainAssociation]", FieldType.Common, "[ChildCategoryTableID]");
    }

}
