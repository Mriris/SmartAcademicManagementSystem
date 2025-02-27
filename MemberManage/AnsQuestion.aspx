<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnsQuestion.aspx.cs" Inherits="MemberManage_AnsQuestion" %>

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
        <br />
     <table style="width: 529px; height: 355px; background-image: url(../Image/例图/购物信息查询.jpg);" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td style="width: 529px; vertical-align: top; height: 355px; text-align: center;">
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="9pt" ForeColor="Red" Text="找回密码"
                        Width="69px"></asp:Label><br />
                    <br />
                    <table align="center" border="1" cellpadding="0" cellspacing="0" bordercolor="#cccc66">
                        <tr>
                            <td style="width: 42px; text-align: center">
                            </td>
                            <td style="width: 84px; text-align: center;">
                    <asp:Label ID="labQuePwd" runat="server" Text="密保问题：" Width="90px" Font-Size="9pt"></asp:Label></td>
                            <td style="width: 171px; text-align: center;">
                    <asp:TextBox ID="txtQuePwd" runat="server" Font-Size="9pt" Enabled="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 42px; text-align: center">
                            </td>
                            <td style="width: 84px; text-align: center;">
                    <asp:Label ID="labAnsPwd" runat="server" EnableViewState="False" Text="密保答案：" Font-Size="9pt" Width="90px"></asp:Label></td>
                            <td style="width: 171px; text-align: center;">
                    <asp:TextBox ID="txtAnsPwd" runat="server" Font-Size="9pt"></asp:TextBox></td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="btnSure" runat="server" Height="22px" Text="确定" Width="43px" OnClick="btnSure_Click" Font-Size="9pt" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
