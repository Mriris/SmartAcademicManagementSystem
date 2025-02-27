<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GoodsInfo.aspx.cs" Inherits="MemberManage_GoodsInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body style="vertical-align: middle; text-align: center">
    <form id="form1" runat="server">
        <div>
            <table style="width: 529px; height: 355px; font-size: 9pt;" cellpadding="0" cellspacing="0" align="center" border="1" bordercolor="#cccc66">
                <tr>
                    <td style="width: 97px; text-align: left;">
                        <asp:TreeView ID="tvGType" runat="server" NodeIndent="10" ShowExpandCollapse="true" ShowLines="True" Height="368px" Width="146px" OnSelectedNodeChanged="tvGType_SelectedNodeChanged">
                            <ParentNodeStyle Font-Bold="False" />
                            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px"
                                VerticalPadding="0px" />
                            <Nodes>
                                <asp:TreeNode Text="学生" Value="stu">
                                    <asp:TreeNode Text="年级" Value="grade" SelectAction="None">
                                        <asp:TreeNode Text="2018" Value="2018"></asp:TreeNode>
                                        <asp:TreeNode Text="2019" Value="2019"></asp:TreeNode>
                                        <asp:TreeNode Text="2020" Value="2020"></asp:TreeNode>
                                        <asp:TreeNode Text="2021" Value="2021"></asp:TreeNode>
                                        <asp:TreeNode Text="2022" Value="2022"></asp:TreeNode>
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
                                </asp:TreeNode>
                                <asp:TreeNode Text="职工" Value="worker">
                                    <asp:TreeNode Text="教师" Value="教师"></asp:TreeNode>
                                    <asp:TreeNode Text="导员" Value="导员"></asp:TreeNode>
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
                            <asp:ListItem Value="GradID">学号</asp:ListItem>
                            <asp:ListItem Value="GradName">姓名</asp:ListItem>
                            <asp:ListItem Value="ClassID">班级</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp; &nbsp; &nbsp;
            <asp:Label ID="Label1" runat="server" Text="关键字："></asp:Label>
                        <asp:TextBox ID="txtKey" runat="server" Width="90px"></asp:TextBox>
                        <asp:Button ID="btnSel" runat="server" Height="20px" OnClick="btnSel_Click" Text="查询"
                            Width="43px" /><br />
                        <br />
                        <asp:GridView ID="gvGoodsInfo" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="9pt" AutoGenerateColumns="False" AllowPaging="True" PageSize="8" OnPageIndexChanging="gvGoodsInfo_PageIndexChanging" Width="383px">
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <EditRowStyle BackColor="#999999" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#CBCF7A" ForeColor="Black" HorizontalAlign="Right" />
                            <HeaderStyle BackColor="#CBCF7A" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="GradID" HeaderText="学号" />
                                <asp:BoundField DataField="GradName" HeaderText="姓名" />
                                <asp:BoundField DataField="Grade" HeaderText="年级" />
                                <asp:BoundField DataField="SpecialityNo" HeaderText="专业" />
                                <asp:BoundField DataField="ClassID" HeaderText="班级" />
                                <asp:HyperLinkField HeaderText="详情" Text="点击查看" DataNavigateUrlFields="GradID" DataNavigateUrlFormatString="EditGInfo.aspx?GradID={0}" Target="mainframe" NavigateUrl="~/MemberManage/EditGInfo.aspx">
                                    <ControlStyle Font-Underline="False" ForeColor="Black" />
                                    <ItemStyle Font-Underline="False" ForeColor="Black" />
                                    <HeaderStyle Font-Underline="False" ForeColor="Black" />
                                </asp:HyperLinkField>
                            </Columns>
                        </asp:GridView>

                        <asp:GridView ID="workerInfo" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Font-Size="9pt" AutoGenerateColumns="False" AllowPaging="True" PageSize="8" OnPageIndexChanging="gvGoodsInfo_PageIndexChanging" Width="383px">
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <EditRowStyle BackColor="#999999" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#CBCF7A" ForeColor="Black" HorizontalAlign="Right" />
                            <HeaderStyle BackColor="#CBCF7A" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="TutorID" HeaderText="工号" />
                                <asp:BoundField DataField="TutorName" HeaderText="姓名" />
                                <asp:BoundField DataField="Sex" HeaderText="性别" />
                                <asp:BoundField DataField="Category" HeaderText="职位" />
                                <asp:BoundField DataField="TutorLevel" HeaderText="等级" />
                                <asp:HyperLinkField HeaderText="详情" Text="点击查看" DataNavigateUrlFields="TutorID" DataNavigateUrlFormatString="EditGInfo.aspx?TutorID={0}" Target="mainframe" NavigateUrl="~/MemberManage/EditGInfo.aspx">
                                    <ControlStyle Font-Underline="False" ForeColor="Black" />
                                    <ItemStyle Font-Underline="False" ForeColor="Black" />
                                    <HeaderStyle Font-Underline="False" ForeColor="Black" />
                                </asp:HyperLinkField>
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
