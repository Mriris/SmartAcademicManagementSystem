<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowPwd.aspx.cs" Inherits="MemberManage_ShowPwd" %>

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
    <table style="width: 529px; background-image: url(../Image/例图/购物信息查询.jpg); height: 355px;" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td style="width: 529px; vertical-align: top; height: 355px; text-align: center;">
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Size="9pt" ForeColor="Red" Text="找到密码"
                        Width="63px"></asp:Label><br />
                    <br />
                    <table align="center" border="1" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 31px; text-align: center; height: 29px;">
                            </td>
                            <td style="width: 62px; text-align: center; height: 29px;">
                    <asp:Label ID="labMemberID" runat="server" Text="会员ID：" Font-Size="9pt" Width="49px"></asp:Label></td>
                            <td style="width: 166px; text-align: center; height: 29px;">
                                <asp:Label ID="labMName" runat="server" Font-Size="9pt"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 31px; text-align: center">
                            </td>
                            <td style="width: 62px; text-align: center;">
                    <asp:Label ID="labPwd" runat="server" Text="密  码：" Font-Size="9pt" Width="45px"></asp:Label></td>
                            <td style="width: 166px; text-align: center;">
                                <asp:Label ID="labMPwd" runat="server" Font-Size="9pt"></asp:Label></td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="btnBack" runat="server" Text="返回首页" OnClick="btnBack_Click" Font-Size="9pt" /></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
