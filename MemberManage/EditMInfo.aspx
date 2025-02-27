<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditMInfo.aspx.cs" Inherits="MemberManage_EditMInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="385px" Width="530px" ScrollBars="Vertical" BorderColor="#C0C000" BorderWidth="1px">
        <table cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td style="width: 108px">
                        </td>
                        <td style="width: 88px; text-align: center;">
        <asp:Label ID="labUserID" runat="server" Text="ID" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtUserID" runat="server" Font-Size="9pt" ReadOnly="true"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 108px">
                        </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labLoginName" runat="server" Text="登录名" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtLoginName" runat="server" Font-Size="9pt"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 108px">
                        </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labSex" runat="server" Text="性 别" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:DropDownList ID="ddlSex" runat="server" Width="132px" Font-Size="9pt">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labPwd" runat="server" Text="密 码" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtPwd" runat="server" Font-Size="9pt" Width="128px"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labTName" runat="server" Text="姓名" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtTName" runat="server" Font-Size="9pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                            <asp:Label ID="labPhone" runat="server" Font-Size="9pt" Text="头像"></asp:Label></td>
                        <td style="width: 184px">
                            <asp:DropDownList ID="ddlPhoto" runat="server" AutoPostBack="True" Font-Size="9pt"
                                OnSelectedIndexChanged="ddlPhoto_SelectedIndexChanged" Width="132px">
                            </asp:DropDownList></td>
                    </tr>
                     <tr>
                         <td style="width: 108px; height: 122px;">
                         </td>
                        <td style="width: 88px; text-align: center; height: 122px;"></td>
                        <td style="width: 184px; height: 122px;">
                            <asp:Image ID="iGPhoto" runat="server" Height="120px" Width="90px" /></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labQuePwd" runat="server" Text="密保问题" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtQuePwd" runat="server" Font-Size="9pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labAnsPwd" runat="server" Text="密保答案" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtAnsPwd" runat="server" Font-Size="9pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labTel" runat="server" Text="电 话" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtTel" runat="server" Font-Size="9pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labEmail" runat="server" Text="Email地址" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Size="9pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labCity" runat="server" Text="所在城市" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:DropDownList ID="ddlCity" runat="server" Width="134px" Font-Size="9pt">
                                <asp:ListItem>长春市</asp:ListItem>
                                <asp:ListItem>长治市</asp:ListItem>
                                <asp:ListItem>北京市</asp:ListItem>
                                <asp:ListItem>上海市</asp:ListItem>
                                <asp:ListItem>天津市</asp:ListItem>
                                <asp:ListItem>吉林市</asp:ListItem>
                                <asp:ListItem>乌鲁木齐</asp:ListItem>
                                <asp:ListItem>呼和浩特</asp:ListItem>
                                <asp:ListItem>银川</asp:ListItem>
                                <asp:ListItem>拉萨</asp:ListItem>
                                <asp:ListItem>五台山</asp:ListItem>
                                <asp:ListItem>太行山</asp:ListItem>
                                <asp:ListItem>吐鲁番</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labAddress" runat="server" Text="住 址" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtAddress" runat="server" Font-Size="9pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px">
                         </td>
                        <td style="width: 88px; text-align: center;">
                    <asp:Label ID="labPostCode" runat="server" Text="邮 编" Font-Size="9pt"></asp:Label></td>
                        <td style="width: 184px">
                    <asp:TextBox ID="txtPostCode" runat="server" Font-Size="9pt"></asp:TextBox></td>
                    </tr>
                     <tr>
                         <td style="width: 108px; height: 22px;">
                         </td>
                        <td style="text-align: center;" colspan="2">
                    <asp:Button ID="btnModify" runat="server" OnClick="btnModify_Click" Text="修改" Font-Size="9pt" />
                            &nbsp; &nbsp;
                            <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="返回" Font-Size="9pt" /></td>
                    </tr>
                </table>
        </asp:Panel>
        </div>
    </form>
</body>
</html>
