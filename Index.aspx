<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>


<%@ Register Src="~/UserControl/MemberLogin.ascx" TagName="MemberLogin" TagPrefix="uc1" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>智能教务处</title>
    <style type="text/css">
        body {
            margin-top: 0px;
        }

        .auto-style1 {
            height: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 800px;" cellpadding="0" cellspacing="0" align="center" border="1" bordercolor="red">
                <tr>
                    <td style="height: 88px; width: 800px;" colspan="2">
                        <table style="width: 800px; height: 88px; font-size: 9pt; background-image: url(Image/例图/banner3.jpg);" cellpadding="0" cellspacing="0">
                            <tr>
                                <td rowspan="3" style="width: 180px"></td>
                                <td colspan="2" rowspan="2" style="vertical-align: top; text-align: right">
                                    <br />
                                    <table style="width: 363px; height: 22px" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td colspan="3" style="font-size: 9pt; text-align: right;">
                                                <br />
                                                <a href="javascript:window.external.AddFavorite('https://github.com/Mriris', '燕庭轩的github')" style="text-decoration: none; color: black;">『收藏本站』</a>
                                                <span onclick="var strHref=window.location.href;this.style.behavior='url(#default#homepage)';this.setHomePage('https://github.com/Mriris');" style="cursor: hand; color: white;">『设置主页』</span>
                                                <a href="2647381485@qq.com" style="text-decoration: none; color: white;">『联系我们』</a>
                                                <a href="https://chat.openai.com/?model=gpt-4" style="font-size: 9pt; text-decoration: none; color: black;">『帮助中心』</a>
                                            </td>
                                        </tr>
                                    </table>
                                    <span style="font-size: 16pt"></span>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" style="height: 30px">
                                    <table style="height: 25px">
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px; height: 156px;">
                        <uc1:MemberLogin ID="MemberLogin1" runat="server" />
                    </td>
                    <td style="background-position: center center; width: 600px; background-image: url(Image/例图/大图片3.jpg); height: 178px;"></td>
                </tr>
                <tr>
                    <td style="width: 200px; vertical-align: top; height: 500px;">
                        <table style="width: 200px; height: 325px; font-size: 9pt; background-image: url(Image/例图/推荐商品下的商品.jpg);" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="height: 45px" colspan="2" align="center">
                                    <br />
                                    <asp:ImageButton ID="ibtnGName" runat="server" Height="115px" Width="129px" ImageUrl="~/Image/例图/人员管理.jpg" OnClick="PersonM" Visible="false" />
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="人员管理"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 45px" colspan="2" align="center" class="auto-style1" rowspan="1">
                                    <br />
                                    <asp:ImageButton ID="gradeManage" runat="server" Height="115px" Width="129px" ImageUrl="~/Image/例图/链接图片3.jpg" OnClick="GradeM" Visible="false" />
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="成绩管理"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center; width: 201px;">
                                    <asp:ImageButton ID="ibtnGoods2" runat="server" Height="115px" Width="130px" ImageUrl="~/Image/例图/事务管理.jpg" OnClick="MetterM" Visible="false" />
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="事务管理"></asp:Label>
                                    <br />
                                    <table style="width: 200px;" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td style="text-align: right; height: 17px;">&nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="height: 500px; width: 600px; background-image: url(Image/例图/最右侧.jpg); text-align: center;">
                        <iframe id="mainframe" runat="server" src="MemberManage/GoodsInfo.aspx" name="mainframe" frameborder="0" style="vertical-align: middle; text-align: center; width: 550px; height: 415px;" scrolling="no" height="450" width="550" visible="false"></iframe>
                        <iframe id="mainframe2" runat="server" src="MemberManage/metterInfo.aspx" name="mainframe2" frameborder="0" style="vertical-align: middle; text-align: center; width: 550px; height: 415px;" scrolling="no" height="450" width="550" visible="false"></iframe>
                        <iframe id="mainframe3" runat="server" src="MemberManage/gradeInfo.aspx" name="mainframe3" frameborder="0" style="vertical-align: middle; text-align: center; width: 550px; height: 415px;" scrolling="no" height="450" width="550" visible="false"></iframe>
                        <br />
                        <asp:HyperLink ID="hlinkIndex" runat="server" Font-Underline="False" ForeColor="black" NavigateUrl="~/Index.aspx" Font-Size="9pt">返回首页</asp:HyperLink>
                        &nbsp;&nbsp;&nbsp;
                        <a href="MemberManage/Help.aspx?TextName=jytk" target="mainframe" style="font-size: 9pt; text-decoration: none; color: black;">使用说明</a>
                    </td>
                </tr>
                <tr>
                    <td style="height: 60px; width: 800px;" colspan="2">
                        <table style="width: 800px; height: 60px; font-size: 9pt;" border="1" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="text-align: center; width: 800px;">班级:软件工程3班  姓名:燕庭轩  学号:2220213464<br />
                                    @2019-2023&nbsp;Multiplayer Universal Advantage
                                    </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
