<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuccReg.aspx.cs" Inherits="MemberManage_SuccReg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 529px; height: 354px; background-image: url(../Image/例图/注册成功页面.jpg);" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td style="text-align: center; width: 529px; height: 354px;" colspan="2">
                    <br /><br /><br /><table cellpadding="0" cellspacing="0"align="center">
                    <tr>
                            <td style="width: 55px; height: 15px; font-size: 9pt;">
                    登录ID：</td>
                            <td style="width: 76px; height: 15px;">
                                <asp:Label ID="labMID" runat="server" Font-Size="9pt"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 55px; height: 15px; font-size: 9pt;">
                    登录名：</td>
                            <td style="width: 76px; height: 15px;">
                                <asp:Label ID="labMName" runat="server" Font-Size="9pt"></asp:Label></td>
                        </tr>
                        <tr>
                            <td style="width: 55px; font-size: 9pt;">
                    密 码：</td>
                            <td style="width: 76px">
                                <asp:Label ID="labMPwd" runat="server" Font-Size="9pt"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
