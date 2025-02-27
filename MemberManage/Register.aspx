<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="MemberManage_Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .auto-style1 {
            width: 293px;
        }
        .auto-style2 {
            width: 175px;
        }
        .auto-style3 {
            height: 23px;
            width: 175px;
        }
        .auto-style4 {
            height: 25px;
            width: 398px;
        }
        .auto-style5 {
            width: 398px;
        }
        .auto-style6 {
            height: 23px;
            width: 398px;
        }
        .auto-style7 {
            width: 175px;
            height: 36px;
        }
        .auto-style8 {
            width: 169px;
            height: 36px;
        }
        .auto-style9 {
            width: 398px;
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Panel ID="Panel1" runat="server" Height="770px" Width="1080px" BorderColor="#C0C000" BorderWidth="1px" ScrollBars="Vertical">
     <table cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td style="text-align: center;">
                    &nbsp;<asp:Label ID="Label2" runat="server" Font-Size="9pt" ForeColor="Red" Text="注册"
                        Width="104px"></asp:Label>
                    <table align="center" cellpadding="0" cellspacing="0" >
                        <tr>
                            <td style="text-align: center" rowspan="12" class="auto-style1">
                            </td>
                            <td style="text-align: center;" class="auto-style2">
                    <asp:Label ID="labLoginName" runat="server" Text="登录名" Font-Size="9pt" Width="137px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtLoginName" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox>
                    <asp:Button ID="btnTest" runat="server" Font-Size="9pt" OnClick="btnTest_Click" Text="重名检测" CausesValidation="False" /></td>
                            <td class="auto-style4">
                                &nbsp;<asp:RequiredFieldValidator ID="rfvLoginName" runat="server" ControlToValidate="txtLoginName" Font-Size="9pt" Height="16px" Width="189px">会员登录名不能为空</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td style="text-align: center;" class="auto-style2">
                    <asp:Label ID="labSex" runat="server" Text="性别" Font-Size="9pt" Width="103px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:DropDownList ID="ddlSex" runat="server" Width="127px" Font-Size="9pt">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList></td>
                            <td class="auto-style5">
                            </td>
                        </tr>
                         <tr>
                            <td style="text-align: center;" class="auto-style2">
                    <asp:Label ID="labPwd" runat="server" Text="密码" Font-Size="9pt" Width="97px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtPwd" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
                            <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" Font-Size="9pt" Width="311px">会员密码不能为空</asp:RequiredFieldValidator></td>
                        </tr>
                         <tr>
                            <td style="text-align: center;" class="auto-style7">
                    <asp:Label ID="labTName" runat="server" Text="姓名" Font-Size="9pt" Width="185px"></asp:Label></td>
                            <td style="text-align: left;" class="auto-style8">
                    <asp:TextBox ID="txtTName" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
                            <td class="auto-style9">
                            </td>
                        </tr>
                         <tr>
                            <td style="text-align: center;" class="auto-style2">
                    <asp:Label ID="labQuePwd" runat="server" Text="密保问题" Font-Size="9pt" Width="120px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                     <asp:TextBox ID="txtQuePwd" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
                            <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvQuePwd" runat="server" ControlToValidate="txtQuePwd" Font-Size="9pt" Width="376px">您应该输入密码问题，以防造成不必要的损失</asp:RequiredFieldValidator></td>
                        </tr>
                         <tr>
                            <td style="text-align: center;" class="auto-style2">
                    <asp:Label ID="labAnsPwd" runat="server" Text="密保答案" Font-Size="9pt" Width="124px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtAnsPwd" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
                            <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="rfvAnsPwd" runat="server" ControlToValidate="txtAnsPwd" Font-Size="9pt" Width="271px">您应该输入密码问题的提示答案，以防造成不必要的损失</asp:RequiredFieldValidator></td>
                        </tr>
                         <tr>
                            <td style="text-align: center; " class="auto-style3">
                    <asp:Label ID="labTel" runat="server" Text="电话" Font-Size="9pt" Width="115px"></asp:Label></td>
                            <td style="width: 169px; text-align: left; height: 23px;">
                    <asp:TextBox ID="txtTel" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
                            <td class="auto-style6">
                            </td>
                        </tr>
                         <tr>
                            <td style="text-align: center;" class="auto-style2">
                    <asp:Label ID="labEmail" runat="server" Text="E-mail地址" Font-Size="9pt" Width="93px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtEmail" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
                            <td class="auto-style5">
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="9pt" Width="277px">您输入的E-mail地址格式不正确，请重新输入</asp:RegularExpressionValidator></td>
                        </tr>
                        <tr>
                            <td style="text-align: center;" class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="所在城市" Font-Size="9pt" Width="115px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;"><asp:DropDownList ID="ddlCity" runat="server" Width="127px" Font-Size="9pt">
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
                            <td class="auto-style5">
                    </td>
                        </tr>
                         <tr>
                            <td style="text-align: center;" class="auto-style2">
                    <asp:Label ID="labAddress" runat="server" Text="住址" Font-Size="9pt" Width="84px"></asp:Label></td>
                            <td style="width: 169px; text-align: left;">
                    <asp:TextBox ID="txtAddress" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
                            <td class="auto-style5">
                    </td>
                        </tr>
                         <tr>
                            <td style="text-align: center; " class="auto-style3">
        <asp:Label ID="labPostCode" runat="server" Text="邮编" Font-Size="9pt" Width="78px"></asp:Label></td>
                            <td style="width: 169px; text-align: left; height: 23px;">
                    <asp:TextBox ID="txtPostCode" runat="server" Font-Size="9pt" Width="123px"></asp:TextBox></td>
                            <td class="auto-style6">
                    <asp:RegularExpressionValidator ID="revPostCode" runat="server" ControlToValidate="txtPostCode" ValidationExpression="\d{6}" Font-Size="9pt" Width="187px">您的邮编输入有误</asp:RegularExpressionValidator></td>
                        </tr>
                         <tr>
                            <td style="text-align: center; " class="auto-style3">
                    <asp:Label ID="labPhone" runat="server" Text="头像" Font-Size="9pt" Width="37px"></asp:Label></td>
                            <td style="width: 169px; text-align: left; height: 23px;"><asp:DropDownList ID="ddlPhoto" runat="server" Width="127px" Font-Size="9pt" OnSelectedIndexChanged="ddlPhoto_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList></td>
                            <td class="auto-style6">
                            </td>
                        </tr>
                          <tr>
                             <td style="text-align: center" colspan="2" rowspan="2">
                             </td>
                            <td style="width: 169px; text-align: left;">
                                <asp:Image ID="imgPhoto" runat="server" Height="128px" Width="128px" /></td>
                            <td rowspan="2" class="auto-style5">
                            </td>
                        </tr>
                         <tr>
                            <td style="width: 169px; text-align: left; height: 22px;">
                                &nbsp; &nbsp; &nbsp;
                                <asp:Button ID="btnRegister" runat="server" Text="注册" OnClick="btnRegister_Click" Font-Size="9pt" />
                                &nbsp;&nbsp; &nbsp;<asp:Button ID="btnCancel" runat="server" Text="重置" OnClick="btnCancel_Click" Font-Size="9pt" CausesValidation="False" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
