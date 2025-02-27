<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gradeInfo.aspx.cs" Inherits="MemberManage_gradeInfo" EnableEventValidation="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .auto-style1 {
            width: 145px;
        }
        .auto-style2 {
            width: 470px;
        }
    </style>
</head>
<body style="vertical-align: top; text-align: center">
    <form id="form1" runat="server">
        <div>
            <table style="width: 529px; height: 355px; font-size: 9pt;" cellpadding="0" cellspacing="0" align="center" border="1" bordercolor="#cccc66">
                <tr>
                    <td style="text-align: left;" class="auto-style1">
                        <asp:TreeView ID="tvGType" runat="server" NodeIndent="10" ShowExpandCollapse="true" ShowLines="True" Height="500px" Width="145px" OnSelectedNodeChanged="tvGType_SelectedNodeChanged">
                            <ParentNodeStyle Font-Bold="False" />
                            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                                VerticalPadding="0px" />
                            <Nodes>
                                <asp:TreeNode Text="总览" Value="all" />
                                <asp:TreeNode Text="学年" Value="year" SelectAction="None">
                                    <asp:TreeNode Text="2021" Value="2021"></asp:TreeNode>
                                    <asp:TreeNode Text="2022" Value="2022"></asp:TreeNode>
                                    <asp:TreeNode Text="2023" Value="2023"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode Text="专业" Value="spe" SelectAction="None">
                                    <asp:TreeNode Text="电子信息大类" Value="001"></asp:TreeNode>
                                    <asp:TreeNode Text="计算机大类" Value="005"></asp:TreeNode>
                                    <asp:TreeNode Text="电子信息工程" Value="102"></asp:TreeNode>
                                    <asp:TreeNode Text="电子信息科学与技术" Value="103"></asp:TreeNode>
                                    <asp:TreeNode Text="光电信息科学与工程" Value="104"></asp:TreeNode>
                                    <asp:TreeNode Text="计算机科学与技术" Value="106"></asp:TreeNode>
                                    <asp:TreeNode Text="计算机应用技术" Value="107"></asp:TreeNode>
                                    <asp:TreeNode Text="软件工程" Value="108"></asp:TreeNode>
                                    <asp:TreeNode Text="数据科学与大数据技术" Value="109"></asp:TreeNode>
                                    <asp:TreeNode Text="通信工程" Value="110"></asp:TreeNode>
                                    <asp:TreeNode Text="网络工程" Value="111"></asp:TreeNode>
                                    <asp:TreeNode Text="智能科学与技术" Value="112"></asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="0px"
                                NodeSpacing="0px" VerticalPadding="0px" />
                        </asp:TreeView>
                    </td>


                    <td style="vertical-align: top; text-align: center;" align="left" class="auto-style2">
                        <asp:Label ID="lblGradID" runat="server" Text="学号："></asp:Label>
                        <asp:TextBox ID="txtGradID" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblCourseID" runat="server" Text="课号："></asp:Label>
                        <asp:TextBox ID="txtCourseID" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblTutorID" runat="server" Text="教师号"></asp:Label>
                        <asp:TextBox ID="txtTutorID" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblYear" runat="server" Text="学年："></asp:Label>
                        <asp:TextBox ID="txtYear" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblTerm" runat="server" Text="学期："></asp:Label>
                        <asp:TextBox ID="txtTerm" runat="server"></asp:TextBox><br />
                        <asp:Label ID="lblScore" runat="server" Text="分数："></asp:Label>
                        <asp:TextBox ID="txtScore" runat="server"></asp:TextBox><br />
                        <asp:Button ID="btnAddGrade" runat="server" Text="添加成绩" OnClick="btnAddGrade_Click" /><br />
                        <asp:Label ID="Label2" runat="server" Text="查询条件："></asp:Label>
                        <asp:DropDownList ID="ddlCondition" runat="server">
                            <asp:ListItem Value="CourseID">课程号</asp:ListItem>
                            <asp:ListItem Value="ClassID">班级</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label1" runat="server" Text="关键字："></asp:Label>
                        <asp:TextBox ID="txtKey" runat="server" Width="90px"></asp:TextBox>
                        <asp:Button ID="btnSel" runat="server" Height="20px" OnClick="btnSel_Click" Text="查询"
                            Width="43px" /><br />
                        <br />
                        <asp:GridView ID="gradeInfo" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="9pt" AutoGenerateColumns="False" AllowPaging="True" PageSize="6" OnPageIndexChanging="gradeInfo_PageIndexChanging" Width="383px" AllowSorting="True" DataSourceID="SqlDataSource3">
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <Columns>
                                <asp:BoundField DataField="GradID" HeaderText="学号" SortExpression="GradID" />
                                <asp:BoundField DataField="GradName" HeaderText="姓名" SortExpression="GradName" />
                                <asp:BoundField DataField="SpecialityNo" HeaderText="专业号" SortExpression="SpecialityNo" />
                                <asp:BoundField DataField="ClassID" HeaderText="班级" SortExpression="ClassID" />
                                <asp:BoundField DataField="CourseID" HeaderText="课程号" SortExpression="CourseID" />
                                <asp:BoundField DataField="CourseName" HeaderText="课程名" SortExpression="CourseName" Visible="False" />
                                <asp:BoundField DataField="Year" HeaderText="学年" SortExpression="Year" />
                                <asp:BoundField DataField="Term" HeaderText="学期" SortExpression="Term" Visible="False" />
                                <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#CBCF7A" ForeColor="Black" HorizontalAlign="Right" />
                            <HeaderStyle BackColor="#CBCF7A" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select TB_Student_Info.GradID,GradName,SpecialityNo,ClassID,TB_Select_Course.CourseID,CourseName,Year,Term,Score from TB_Student_Info,TB_Course_info,TB_Select_Course where TB_Student_Info.GradID=TB_Select_Course.GradID and TB_Select_Course.CourseID=TB_Course_info.CourseID"></asp:SqlDataSource>

                        <asp:Button ID="btnExportToExcel" runat="server" Text="导出到Excel" OnClick="btnExportToExcel_Click" EnableEventValidation="false" />


                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
