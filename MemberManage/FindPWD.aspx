<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FindPWD.aspx.cs" Inherits="MemberManage_FindPWD" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
    <table style="width: 529px; height: 355px; background-image: url(../Image/例图/购物信息查询.jpg);" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td style="width: 529px;vertical-align: top; height: 355px; text-align: center;">
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="9pt" ForeColor="Red" Text="找回密码"
                        Width="74px"></asp:Label><br />
                    <br />
                    <asp:Label ID="labMemberID" runat="server" Height="12px" Text="用户ID：" Width="53px" Font-Size="9pt"></asp:Label>
                    &nbsp; &nbsp; 
                    <asp:TextBox ID="txtMemberID" runat="server" Font-Size="9pt"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="btnSure" runat="server" Text="确定" OnClick="btnSure_Click" Font-Size="9pt" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
