﻿using Orm;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YH_Webtool
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDropName();
            }
            CreatTable();
        }
        public void BindDropName()
        {
            string sql = "Select Name FROM SysObjects Where XType='U' orDER BY Name";//表
            DataTable dt = SqlOP.ExecuteDataset(sql).Tables[0];


            DataSet dv=SqlOP.ExecuteDataset("select [name] as Name from sys.views ");//视图
            
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            CreatTable();

        }

        void CreatTable()
        {
            Table1.Rows.Clear();
            string sql = "select CAST(g.value AS nvarchar)as notes,a.name from sys.columns a left join sys.extended_properties g on (a.object_id = g.major_id AND a.column_id=g.minor_id) where object_id=OBJECT_ID('" + DropDownList1.SelectedValue + "') order by object_id,a.column_id";
            DataSet ds = SqlOP.ExecuteDataset(sql);
            TableRow head = new TableRow();
            TableCell tc1 = new TableCell();
            tc1.Text = "名称";
            head.Cells.Add(tc1);
            TableCell tc2 = new TableCell();
            tc2.Text = "字段";
            head.Cells.Add(tc2);
            TableCell tc3 = new TableCell();
            tc3.Text = "类型";
            head.Cells.Add(tc3);
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                TableRow tr = new TableRow();
                foreach (DataColumn dc in dr.Table.Columns)
                {
                    TableCell tc = new TableCell();
                    if (dr[dc.ColumnName] != DBNull.Value)
                    {
                        tc.Text = dr[dc.ColumnName].ToString();
                    }
                    tr.Cells.Add(tc);
                }
                TableCell tcC = new TableCell();
                DropDownList dd = new DropDownList();
                dd.ID = "dd" + dr[1].ToString();
                dd.Items.Add(new ListItem("文本框", "text"));
                dd.Items.Add(new ListItem("隐藏", "hidden"));
                dd.Items.Add(new ListItem("下拉", "select"));
                dd.Items.Add(new ListItem("combobox", "combobox"));
                 dd.Items.Add(new ListItem("combotree", "combotree"));
                dd.Items.Add(new ListItem("单选", "radio"));
                dd.Items.Add(new ListItem("多选", "checkbox"));
                dd.Items.Add(new ListItem("textarea", "textarea"));
                dd.Items.Add(new ListItem("文件", "File"));
                dd.Items.Add(new ListItem("span", "span"));
                tcC.Controls.Add(dd);
                tr.Cells.Add(tcC);
                Table1.Rows.Add(tr);

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string result = " <table class=\"stripes\" style=\"table-layout: fixed;\" border=\"0\"  cellspacing=\"0\" cellpadding=\"0\">";
            string listHidden = "";
            string list = "";
            for (int i = 0; i < Table1.Rows.Count; i++)
            {
                DropDownList dd = (DropDownList)Table1.Rows[i].FindControl("dd" + Table1.Rows[i].Cells[1].Text);
                string types = dd.SelectedValue;
                if (types == "hidden")
                {
                    listHidden += controlType(types, Table1.Rows[i].Cells[0].Text, Table1.Rows[i].Cells[1].Text);
                }
                else
                {
                    list += controlType(types, Table1.Rows[i].Cells[0].Text, Table1.Rows[i].Cells[1].Text);
                }

            }
            result += listHidden + list;
            result += " </table>";

            lblform.Text = result;
            txtVaule.Text = result;
        }

        string controlType(string ty, string name, string values)
        {

            switch (ty)
            {

                case "text":
                    string s = "<tr>";

                    s += "<td><label >" + name + "：</label></td>";
                    s += "<td><input class=\"easyui-validatebox textbox\" type=\"text\"  name=\"" + values + "\" /></td>";
                    s += "</tr>\n";
                    return s;
                case "hidden":
                    string hidden = "<input  type=\"hidden\"  name=\"" + values + "\" />";
                    return hidden;
                case "select":
                    string select = "<tr>";

                    select += "<td><label >" + name + "：</label></td>";
                    select += "<td><select id=\"" + values + "\" name=\"" + values + "\"  style=\"width:200px;\"  > <option value=\"\">哈喽</option></select></td>";
                    select += "</tr>\n";
                    return select;

                case "combobox":
                    string combobox = "<tr>";

                    combobox += "<td><label >" + name + "：</label></td>";
                    combobox += "<td><select id=\"" + values + "\" name=\"" + values + "\" class=\"easyui-combotree\" style=\"width:200px;\" data-options=\"required:true\" > </select></td>";
                    combobox += "</tr>\n";
                    return combobox;
                case "combotree":
                    string combotree = "<tr>";

                    combotree += "<td><label >" + name + "：</label></td>";

                    combotree += "<td> <input id=\"" + values + "\" class=\"easyui-combobox\" name=\"" + values + "\" style=\"width:200px;\" data-options=\"valueField:'ItemValue',textField:'ItemName',required:true\" /></td>";
                    combotree += "</tr>\n";
                    return combotree;
                case "radio":
                    string radio = "<tr>";

                    radio += "<td><label >" + name + "：</label></td>";
                    radio += "<td><input  type=\"radio\" value='true'  name=\"" + values + "\"  />值1</td>";
                    radio += "</tr>\n";
                    return radio;
                case "checkbox":
                    string checkbox = "<tr>";

                    checkbox += "<td><label >" + name + "：</label></td>";
                    checkbox += "<td><span class=\"checkCss\"><input type=\"checkbox\" name=\"" + values + "\" value=\"类型值1\">类型1</span></td>";
                    checkbox += "</tr>\n";
                    return checkbox;
                case "textarea":
                    string textarea = "<tr>";

                    textarea += "<td><label >" + name + "：</label></td>";
                    textarea += "<td><textarea  class=\"areabox\"  name=\"" + values + "\" ></textarea></td>";
                    textarea += "</tr>\n";
                    return textarea;
                case "File":
                    string File = "<tr>";

                    File += "<td><label >" + name + "：</label></td>";
                    File += "<td><input  type=\"file\"   name=\"" + values + "\"  /></td>";
                    File += "</tr>\n";
                    return File;
                case "span":
                    string span = "<tr>";

                    span += "<td><label >" + name + "：</label></td>";
                    span += "<td><span   name=\"" + values + "\"  ></span></td>";
                    span += "</tr>\n";
                    return span;
                default:
                    return "";
            }

        }

    }
}