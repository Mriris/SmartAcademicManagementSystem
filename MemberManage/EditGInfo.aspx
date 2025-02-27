<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeFile="EditGInfo.aspx.cs" Inherits="MemberManage_EditGInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
            height: 30px;
        }
        .auto-style2 {
            width: 346px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 513px; height: 355px; font-size: 9pt; background-image: url(../Image/例图/购物信息查询.jpg);" cellpadding="0" cellspacing="0" align="center" border="1" bordercolor="#cccc66">
                <tr>
                    <td colspan="3" style="text-align: center">=== 详细信息 ===</td>
                </tr>
                <tr>
                    <td style="width: 196px; text-align: center;" rowspan="6">
                        <asp:TextBox ID="TextBox1" runat="server" Height="199px" Visible="false" Width="136px" TextMode="MultiLine" Columns="50" Rows="5"></asp:TextBox>
                        <asp:Image ID="iGPhoto" runat="server" Height="160px" Width="136px" /></td>
                    <td style="text-align: center; " class="auto-style1">学号</td>
                    <td class="auto-style2">
                        <asp:Label ID="txtGID" runat="server" Text="Label"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center; height: 30px;">姓名</td>
                    <td style="width: 346px; height: 30px;">
                        <asp:Label ID="txtGName" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center; height: 30px;">年级</td>
                    <td style="width: 346px; height: 30px;">
                        <asp:Label ID="txtGStore" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center; height: 30px;">专业</td>
                    <td style="width: 346px; height: 30px;">
                        <asp:Label ID="txtGPrice" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center; height: 30px;">班级</td>
                    <td style="width: 346px; height: 30px;">
                        <asp:Label ID="txtGType" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td style="width: 100px; text-align: center; height: 30px;">身份证</td>
                    <td style="width: 346px; height: 30px;">
                        <asp:Label ID="txtGDate" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp;详情</td>
                </tr>
                <tr>
                    <td style="height: 134px; vertical-align: top; text-indent: 8pt; text-align: center;" colspan="3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [TB_Select_Course] WHERE ([GradID] = ?)" DeleteCommand="DELETE FROM [TB_Select_Course] WHERE [GradID] = ? AND [CourseID] = ? AND [Year] = ? AND [Term] = ?" InsertCommand="INSERT INTO [TB_Select_Course] ([GradID], [CourseID], [TutorID], [Year], [Term], [Score]) VALUES (?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [TB_Select_Course] SET [TutorID] = ?, [Score] = ? WHERE [GradID] = ? AND [CourseID] = ? AND [Year] = ? AND [Term] = ?">
                            <DeleteParameters>
                                <asp:Parameter Name="GradID" Type="String" />
                                <asp:Parameter Name="CourseID" Type="String" />
                                <asp:Parameter Name="Year" Type="String" />
                                <asp:Parameter Name="Term" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="GradID" Type="String" />
                                <asp:Parameter Name="CourseID" Type="String" />
                                <asp:Parameter Name="TutorID" Type="String" />
                                <asp:Parameter Name="Year" Type="String" />
                                <asp:Parameter Name="Term" Type="String" />
                                <asp:Parameter Name="Score" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtGID" Name="GradID" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TutorID" Type="String" />
                                <asp:Parameter Name="Score" Type="Int32" />
                                <asp:Parameter Name="GradID" Type="String" />
                                <asp:Parameter Name="CourseID" Type="String" />
                                <asp:Parameter Name="Year" Type="String" />
                                <asp:Parameter Name="Term" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="GradID,CourseID,Year,Term" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" PageSize="5" Width="507px">
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="GradID" HeaderText="GradID" ReadOnly="True" SortExpression="GradID" Visible="False" />
                                <asp:BoundField DataField="CourseID" HeaderText="课号" ReadOnly="True" SortExpression="CourseID" />
                                <asp:BoundField DataField="TutorID" HeaderText="教师" SortExpression="TutorID" />
                                <asp:BoundField DataField="Year" HeaderText="学年" ReadOnly="True" SortExpression="Year" />
                                <asp:BoundField DataField="Term" HeaderText="学期" ReadOnly="True" SortExpression="Term" />
                                <asp:BoundField DataField="Score" HeaderText="分数" SortExpression="Score" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="Tan" />
                            <HeaderStyle BackColor="Tan" Font-Bold="True" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <SortedAscendingCellStyle BackColor="#FAFAE7" />
                            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                            <SortedDescendingCellStyle BackColor="#E1DB9C" />
                            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; height: 24px;" colspan="3">
                        <asp:Button ID="btnShop" runat="server" Text="生成" Height="23px" Width="60px" OnClick="btnGreet_Click" />&nbsp;&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
