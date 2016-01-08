<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="sqlGenerate.aspx.cs" Inherits="WebtoolUI.sqlGenerate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>
        数据库字段 生成
    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>数据表： 
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
                    <td>
                      
                        <asp:Button ID="btn_json" runat="server" Text="生成json格式" OnClick="btn_json_Click"  />
                        <asp:Button ID="btn_remark" runat="server" Text="字段说明" OnClick="btn_remark_Click"  />
                        <asp:Button ID="btn_entity" runat="server" Text="生成实体" OnClick="btn_entity_Click"  />
                   <asp:Button ID="btn_pro_add" runat="server" Text="存储过程_添加" OnClick="btn_pro_add_Click" /> 

                        <asp:Button ID="btn_DbParameter" runat="server" Text="实体转_参数" OnClick="btn_DbParameter_Click"  /> 
                    </td>
                </tr>
                
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtVaule" runat="server" Height="800px" TextMode="MultiLine" Width="800px"></asp:TextBox></td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
