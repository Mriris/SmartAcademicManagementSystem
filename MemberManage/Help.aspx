<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="MemberManage_Help" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    <asp:Label id="labHelp" style="Z-INDEX: 102; LEFT: 344px;" runat="server"
					Width="188px" Font-Size="9pt" ForeColor="#FF8800"></asp:Label><br /><br />
	<asp:TextBox id="txtRead" style="Z-INDEX: 103; LEFT: 344px;" runat="server"
			Width="530px" Height="355px" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
    </div>
    </form>
</body>
</html>
