<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="YH_Webtool.main"  validateRequest="false"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      数据表：  <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList><asp:Button ID="Button1" runat="server" Text="执行" OnClick="Button1_Click" />
    </div>
      <div>  
          <asp:Table ID="Table1" runat="server"></asp:Table><asp:Button ID="Button2" runat="server" Text="生成Form表单" OnClick="Button2_Click" />
          
          <asp:Label ID="lblform" runat="server"></asp:Label>
          <asp:TextBox ID="txtVaule" runat="server" Height="400px" TextMode="MultiLine" Width="400px"></asp:TextBox>

      </div>
        
        <div> </div>
    </form>
</body>
</html>
