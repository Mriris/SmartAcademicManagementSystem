<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MemberLogin.ascx.cs" Inherits="UserControl_MemberLogin" %>
<table style="width: 200px; height: 156px; font-size: 9pt; background-image: url(Image/例图/登录.jpg);" cellpadding="0" cellspacing="0">
    <tr>
        <td style="vertical-align: top; width: 200px; height: 156px;">
        <asp:Panel ID="Panel1" runat="server" Width="200px" Visible="false"><br />
            <table style="width: 200px; font-size: 9pt;" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="height: 43px"></td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="MName" runat="server" ForeColor="#FF8000"></asp:Label>您好！</td>
                </tr>
                 <tr>
                    <td style="text-align: center; height: 16px;">
                        <asp:LinkButton ID="lbtnLogout" runat="server" Font-Underline="False" ForeColor="Black" OnClick="lbtnLogout_Click">注销</asp:LinkButton>
                        &nbsp;
                        <asp:HyperLink ID="hlinkEdit" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MemberManage/EditMInfo.aspx" Target="mainframe">更新信息</asp:HyperLink></td>
                    <td style="height: 16px">
                    </td>
                </tr>
            </table>
     </asp:Panel><br /><br /><br />
     <asp:Panel ID="Panel2" runat="server" Width="200px">
        <table style="font-size: 9pt; width: 165px;" cellpadding="0" cellspacing="0" align="center">
                <tr>
                    <td style="width: 77px">
                        用户名:</td>
                    <td style="width: 80px">
                        <asp:TextBox ID="txtMName" runat="server" Width="69px"></asp:TextBox></td>
                    <td rowspan="2" style="width: 33px">
                        <asp:Button ID="btnLogin" runat="server" Height="32px" Text="登录" Width="40px" OnClick="btnLogin_Click" TabIndex="1" /></td>
                </tr>
                <tr>
                    <td style="width: 77px">
                        密&nbsp;&nbsp;&nbsp;码:</td>
                    <td style="width: 80px">
                        <asp:TextBox ID="txtMPwd" runat="server" Width="69px" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="height: 16px; text-align: center;" colspan="3">
                        <asp:HyperLink ID="hlinkReg" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MemberManage/RegPro.aspx" Target="mainframe">注册</asp:HyperLink>
                        <asp:HyperLink ID="hlinkFPwd" runat="server" Font-Underline="False" ForeColor="Black" NavigateUrl="~/MemberManage/FindPWD.aspx" Target="mainframe" Width="48px">忘记密码</asp:HyperLink></td>
                </tr>
            </table>
        </asp:Panel>
        </td>
    </tr>
</table>
