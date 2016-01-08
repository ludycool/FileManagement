using Orm;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebtoolUI
{
    public partial class sqlGenerate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropName();
            }
        }
        public void BindDropName()
        {
            string sql = "Select Name FROM SysObjects Where XType='U' orDER BY Name";//表
            DataTable dt = SqlOP.ExecuteDataset(sql).Tables[0];


            DataSet dv = SqlOP.ExecuteDataset("select [name] as Name from sys.views ");//视图

            foreach (DataRow dr in dv.Tables[0].Rows)
            {
                DataRow row = dt.NewRow();
                row["Name"] = dr[0];
                dt.Rows.Add(row);//这样就可以添加了  

            }

            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "Name";
            DropDownList1.DataBind();
        }
        /// <summary>
        /// 添加的存储过程
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_pro_add_Click(object sender, EventArgs e)
        {
            string sql = "SELECT   CAST(g.value AS nvarchar)as notes,  a.name,b.name as ztype ,c.isnullable,a.max_length  FROM     systypes b,    sys.columns AS a LEFT OUTER JOIN  sys.syscolumns AS c ON a.name = c.name AND a.object_id = c.id left join sys.extended_properties g on (a.object_id = g.major_id AND a.column_id=g.minor_id) WHERE   (a.object_id = OBJECT_ID('" + DropDownList1.SelectedValue + "'))and c.xtype=b.xusertype order by object_id,a.column_id";
            DataSet ds = SqlOP.ExecuteDataset(sql);
            string json = "create PROCEDURE [dbo].[sp_" + DropDownList1.SelectedValue + "_Add] \n";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                json += proType(dr[1].ToString(), dr[0].ToString(), dr[2].ToString(), dr[4].ToString()) + "\n";
            }
            json += " AS \n";
            json += " BEGIN \n";

            json += " INSERT INTO [" + DropDownList1.SelectedValue + "]( \n";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                json += "[" + dr[1].ToString() + "],";
            }
            json = json.Substring(0, json.Length - 1);

            json += " )VALUES(";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                json += "@" + dr[1].ToString() + ",";
            }
            json = json.Substring(0, json.Length - 1);
            json += " ) \n";

            json += " END ";
            txtVaule.Text = json;
        }


        /// <summary>
        /// 生成json格式
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_json_Click(object sender, EventArgs e)
        {
            string sql = "select CAST(g.value AS nvarchar)as notes,a.name from sys.columns a left join sys.extended_properties g on (a.object_id = g.major_id AND a.column_id=g.minor_id) where object_id=OBJECT_ID('" + DropDownList1.SelectedValue + "') order by object_id,a.column_id";
            DataSet ds = SqlOP.ExecuteDataset(sql);
            string json = "{";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                json += "\"" + dr[1].ToString() + "\":\"\",";
            }
            json = json.Substring(0, json.Length - 1);
            json += "}";
            txtVaule.Text = json;
        }
        /// <summary>
        /// 把读出来 备注
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_remark_Click(object sender, EventArgs e)
        {
            string sql = "select CAST(g.value AS nvarchar)as notes,a.name from sys.columns a left join sys.extended_properties g on (a.object_id = g.major_id AND a.column_id=g.minor_id) where object_id=OBJECT_ID('" + DropDownList1.SelectedValue + "') order by object_id,a.column_id";
            DataSet ds = SqlOP.ExecuteDataset(sql);
            string json = "表名  " + DropDownList1.SelectedValue + "\n";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                json += dr[1].ToString() + " " + dr[0].ToString() + "\n";
            }
            json = json.Substring(0, json.Length - 1);
            json += "";
            txtVaule.Text = json;
        }
        /// <summary>
        /// 生成实体类
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btn_entity_Click(object sender, EventArgs e)
        {
            string sql = "SELECT   CAST(g.value AS nvarchar)as notes,  a.name,b.name as ztype ,c.isnullable FROM     systypes b,    sys.columns AS a LEFT OUTER JOIN  sys.syscolumns AS c ON a.name = c.name AND a.object_id = c.id left join sys.extended_properties g on (a.object_id = g.major_id AND a.column_id=g.minor_id) WHERE   (a.object_id = OBJECT_ID('" + DropDownList1.SelectedValue + "'))and c.xtype=b.xusertype order by object_id,a.column_id";

            DataSet ds = SqlOP.ExecuteDataset(sql);
            string json = "using System;\n using System.Text;\n using System.Collections; \n using System.Collections.Generic;\n namespace mode \n {\n public  class  " + DropDownList1.SelectedValue + "\n{ ";

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                json += " /// <summary> \n ///   " + dr[0].ToString() + " \n /// </summary> \n public " + entityType(dr[2].ToString(), dr[3].ToString()) + " " + dr[1].ToString() + " \n{ \n get;\n set;\n }\n";
            }
            json += "} \n}";
            txtVaule.Text = json;
        }

        /// <summary>
        /// 实体的类型
        /// </summary>
        /// <param name="xtpye"></param>
        /// <param name="isnullable"></param>
        /// <returns></returns>
        protected string entityType(string xtpye, string isnullable)
        {

            switch (xtpye)
            {
                case "uniqueidentifier":
                    if (isnullable.Equals("1"))
                    {
                        return "Guid?";
                    }
                    else
                    {
                        return "Guid";
                    }
                    break;
                case "nvarchar":
                    return "String";
                    break;
                case "varchar":
                    return "String";
                    break;
                case "sysname":
                    return "String";
                    break;
                case "text":
                    return "String";
                    break;
                case "char":
                    return "String";
                    break;
                case "int":
                    if (isnullable.Equals("1"))
                    {
                        return "Int32?";
                    }
                    else
                    {
                        return "Int32";
                    }
                    break;
                case "tinyint":
                    if (isnullable.Equals("1"))
                    {
                        return "Byte?";
                    }
                    else
                    {
                        return "Byte";
                    }
                    break;

                case "bit":
                    if (isnullable.Equals("1"))
                    {
                        return "Byte?";
                    }
                    else
                    {
                        return "Byte";
                    }
                    break;
                case "datetime":
                    if (isnullable.Equals("1"))
                    {
                        return "DateTime?";
                    }
                    else
                    {
                        return "DateTime";
                    }

                    break;

                case "float":
                    if (isnullable.Equals("1"))
                    {
                        return "Double?";
                    }
                    else
                    {
                        return "Double";
                    }

                    break;
                case "decimal":
                    if (isnullable.Equals("1"))
                    {
                        return "Decimal?";
                    }
                    else
                    {
                        return "Decimal";
                    }

                    break;
                default:
                    return "String";
                    break;
            }


        }

        /// <summary>
        /// 存储过程中的类型
        /// </summary>
        /// <param name="xtpye">类型</param>
        /// <param name="lenth">长度</param>
        /// <returns></returns>
        protected string proType(string name, string remark, string xtpye, string lenth)
        {

            switch (xtpye)
            {
                case "nvarchar":
                    return " @" + name + "   " + xtpye + "(" + lenth + "),  --" + remark;

                case "varchar":
                    return " @" + name + "   " + xtpye + "(" + lenth + "),  --" + remark;

                default:

                    return " @" + name + "   " + xtpye + ",  --" + remark;
            }


        }

    }
}