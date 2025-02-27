using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using static System.Net.Mime.MediaTypeNames;
using System.Drawing;
using System.IO;

public partial class MemberManage_gradeInfo : System.Web.UI.Page
{
    int mode = 0;
    string sqlstr;
    SqlOperate sqloperate = new SqlOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gradeInfo.Visible = true;
        }
    }
    protected void tvGType_SelectedNodeChanged(object sender, EventArgs e)
    {
        string sSeleNodeText = tvGType.SelectedValue.ToString();
        
        Label2.Text = sSeleNodeText;
        if (sSeleNodeText == "all")
        {
            mode = 0;
            sqlstr = "select TB_Student_Info.GradID,GradName,SpecialityNo,ClassID,TB_Select_Course.CourseID,CourseName,Year,Term,Score " +
                "from TB_Student_Info,TB_Course_info,TB_Select_Course " +
                "where TB_Student_Info.GradID=TB_Select_Course.GradID and TB_Select_Course.CourseID=TB_Course_info.CourseID";
            SqlDataSource3.SelectCommand = sqlstr;
            //sqloperate.gvDataBind(gradeInfo, sqlstr);
        }
        else if (sSeleNodeText == "2021" || sSeleNodeText == "2022" || sSeleNodeText == "2023")
        {
            mode = 1;
            sqlstr = "select TB_Student_Info.GradID,GradName,SpecialityNo,ClassID,TB_Select_Course.CourseID,CourseName,Year,Term,Score " +
                "from TB_Student_Info,TB_Course_info,TB_Select_Course " +
                "where TB_Student_Info.GradID=TB_Select_Course.GradID and TB_Select_Course.CourseID=TB_Course_info.CourseID and Year='" + sSeleNodeText + "'";
            SqlDataSource3.SelectCommand = sqlstr;
            //sqloperate.gvDataBind(gradeInfo, sqlstr);
        }
        else
        {
            mode = 2;
            sqlstr = "select TB_Student_Info.GradID,GradName,SpecialityNo,ClassID,TB_Select_Course.CourseID,CourseName,Year,Term,Score " +
                "from TB_Student_Info,TB_Course_info,TB_Select_Course " +
                "where TB_Student_Info.GradID=TB_Select_Course.GradID and TB_Select_Course.CourseID=TB_Course_info.CourseID and TB_Student_Info.SpecialityNo='" + sSeleNodeText + "'";
            SqlDataSource3.SelectCommand = sqlstr;
            //sqloperate.gvDataBind(gradeInfo, sqlstr);
        }
        Session["sqlstrG"] = sqlstr;
    }
    protected void gradeInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gradeInfo.PageIndex = e.NewPageIndex;
        this.gvbind();
    }
    protected void btnSel_Click(object sender, EventArgs e)
    {
        this.gvbind();
    }
    public void gvbind()
    {
        if (mode == 0)
        {
            //string sqlstr = "select * from TB_Course_info";
            //sqloperate.gvDataBind(gradeInfo, sqlstr);
        }
        else if (mode == 1)
        {
            //string sqlstr = "select * from TB_Course_info where "
                //+ ddlCondition.SelectedValue + " like '%" + txtKey.Text.Trim() + "%'";
            //sqloperate.gvDataBind(gradeInfo, sqlstr);
        }
        else if (mode == 2)
        {
           // string sqlstr = "select * from TB_Course_info where "
                //+ ddlCondition.SelectedValue + " like '%" + txtKey.Text.Trim() + "%'";
            //sqloperate.gvDataBind(gradeInfo, sqlstr);
        }
    }

    protected void btnAddGrade_Click(object sender, EventArgs e)
    {
        string GradID = txtGradID.Text.Trim();
        string CourseID = txtCourseID.Text.Trim();
        string TutorID = txtTutorID.Text.Trim();
        string Year = txtYear.Text.Trim();
        string Term = txtTerm.Text.Trim();
        string Score = txtScore.Text.Trim();

        string sqlInsert = "INSERT INTO TB_Select_Course (GradID, CourseID, TutorID, Year, Term, Score) VALUES ('" + GradID + "','" + CourseID + "','" + TutorID + "','" + Year + "','" + Term + "','" + Score + "')";

        sqloperate.DataCom(sqlInsert);
        gvbind();
    }

    protected void btnExportToExcel_Click(object sender, EventArgs e)
    {
        //HttpContext.Current.Response.SuppressContent = true;
        // 设置HttpResponse的Header，指示输出的内容为Excel文件
        SqlDataSource3.SelectCommand = Session["sqlstrG"].ToString();
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            // 为了允许导出到Excel中的样式被包含，需要将GridView的属性设置为False
            gradeInfo.AllowPaging = false;
            gradeInfo.DataBind();

            // 将GridView的HeaderRow和Row样式应用于导出的Excel
            gradeInfo.HeaderRow.BackColor = Color.White;
            foreach (TableCell cell in gradeInfo.HeaderRow.Cells)
            {
                cell.BackColor = gradeInfo.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in gradeInfo.Rows)
            {
                row.BackColor = Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    if (row.RowIndex % 2 == 0)
                    {
                        cell.BackColor = gradeInfo.AlternatingRowStyle.BackColor;
                    }
                    else
                    {
                        cell.BackColor = gradeInfo.RowStyle.BackColor;
                    }
                    cell.CssClass = "textmode";
                }
            }
            gradeInfo.RenderControl(hw);
            // 将HTML字符串写入HttpResponse
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
            gradeInfo.AllowPaging = true;
        }
    }

    // 由于VerifyRenderingInServerForm的ASP.NET检查，需要重写此方法
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* 必须要有以确认在导出时不会出现“控件必须放在具有runat=server的窗体标签内”错误。 */
    }

    protected override void Render(HtmlTextWriter writer)
    {
        // 当前控件为gradeInfo，如果它是触发事件的控件，则绕过事件验证
        if (HttpContext.Current != null)
        {
            TextWriter stringWriter = new StringWriter();
            HtmlTextWriter htmlWriter = new HtmlTextWriter(stringWriter);
            base.Render(htmlWriter);
            string html = stringWriter.ToString();
            writer.Write(html);
        }
        else
        {
            base.Render(writer);
        }
    }

}
