<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="YH_Webtool.main" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>数据库 生成表单</title>
     <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
        <script/ type="text/javascript">
            function go() {


                $("select").val($("#defalseSelect").val())
            }
            </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            数据表： 
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><asp:Button ID="Button1" runat="server" Text="执行" OnClick="Button1_Click" />
          默认  <select id="defalseSelect" onchange="go()" >
			<option value="text">文本框</option>
			<option value="hidden">隐藏</option>
			<option value="combobox">combobox</option>
              	<option value="combotree">combotree</option>
			<option value="radio">单选</option>
			<option value="checkbox">多选</option>
			<option value="textarea">textarea</option>
			<option value="File">文件</option>
			<option value="span">span</option>
            </select></div>
        <div>
            <asp:Table ID="Table1" runat="server"></asp:Table>
            <asp:Button ID="Button2" runat="server" Text="生成Form表单" OnClick="Button2_Click" />

            <asp:Label ID="lblform" runat="server"></asp:Label>
            <asp:TextBox ID="txtVaule" runat="server" Height="400px" TextMode="MultiLine" Width="400px"></asp:TextBox>

        </div>

        <div></div>
    </form>
</body>
</html>
