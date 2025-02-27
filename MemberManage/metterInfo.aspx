<%@ Page Language="C#" AutoEventWireup="true" CodeFile="metterInfo.aspx.cs" Inherits="MemberManage_metterInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .auto-style1 {
            width: 145px;
        }
    </style>
</head>
<body style="vertical-align: middle; text-align: center">
    <form id="form1" runat="server">
        <div>
            <table style="width: 529px; height: 355px; font-size: 9pt;" cellpadding="0" cellspacing="0" align="center" border="1" bordercolor="#cccc66">
                <tr>
                    <td style="text-align: left;" class="auto-style1">
                        <asp:TreeView ID="tvGType" runat="server" NodeIndent="10" ShowExpandCollapse="true" ShowLines="True" Height="368px" Width="100px" OnSelectedNodeChanged="tvGType_SelectedNodeChanged">
                            <ParentNodeStyle Font-Bold="False" />
                            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                                VerticalPadding="0px" />
                            <Nodes>
                                <asp:TreeNode Text="课程" Value="course">
                                    <asp:TreeNode Text="考试" Value="考试"></asp:TreeNode>
                                    <asp:TreeNode Text="考查" Value="考查"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode Text="班级" Value="class">
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
                    <td colspan="2" style="vertical-align: top; width: 470px; text-align: center;" align="left">&nbsp;<br />
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="查询条件："></asp:Label>
                        <asp:DropDownList ID="ddlCondition" runat="server">
                            <asp:ListItem Value="CourseID">课程号</asp:ListItem>
                            <asp:ListItem Value="CourseName">课程名称</asp:ListItem>
                            <asp:ListItem Value="DeptID">所属院系</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label1" runat="server" Text="关键字："></asp:Label>
                        <asp:TextBox ID="txtKey" runat="server" Width="90px"></asp:TextBox>
                        <asp:Button ID="btnSel" runat="server" Height="20px" OnClick="btnSel_Click" Text="查询"
                            Width="43px" /><br />
                        <br />
                        <asp:GridView ID="courseInfo" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="9pt" AutoGenerateColumns="False" AllowPaging="True" PageSize="8" OnPageIndexChanging="courseInfo_PageIndexChanging" Width="383px">
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <EditRowStyle BackColor="#999999" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#CBCF7A" ForeColor="Black" HorizontalAlign="Right" />
                            <HeaderStyle BackColor="#CBCF7A" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="CourseID" HeaderText="课程号" />
                                <asp:BoundField DataField="CourseName" HeaderText="课程名称" />
                                <asp:BoundField DataField="StudyHour" HeaderText="学时" />
                                <asp:BoundField DataField="Credit" HeaderText="学分" />
                                <asp:BoundField DataField="TestSty" HeaderText="考核方式" />
                                <asp:BoundField DataField="DeptID" HeaderText="所属院系" />
                                <asp:BoundField DataField="Notes" HeaderText="备注" />
                            </Columns>
                        </asp:GridView>

                        <asp:GridView ID="classInfo" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="9pt" AutoGenerateColumns="False" AllowPaging="True" PageSize="8" OnPageIndexChanging="courseInfo_PageIndexChanging" Width="383px">
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <EditRowStyle BackColor="#999999" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#CBCF7A" ForeColor="Black" HorizontalAlign="Right" />
                            <HeaderStyle BackColor="#CBCF7A" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="SpecialityNo" HeaderText="专业号" />
                                <asp:BoundField DataField="Grade" HeaderText="年级" />
                                <asp:BoundField DataField="ClassID" HeaderText="班级号" />
                                <asp:BoundField DataField="InstructorID" HeaderText="指导员工号" />
                                <asp:BoundField DataField="MonitorID" HeaderText="班长学号" />
                            </Columns>
                        </asp:GridView>

                        <br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
