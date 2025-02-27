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

public partial class MemberManage_metterInfo : System.Web.UI.Page
{
    SqlOperate sqloperate = new SqlOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            courseInfo.Visible = true;
            classInfo.Visible = false;
            string sqlstr = "select * from TB_Course_info";
            sqloperate.gvDataBind(courseInfo, sqlstr);
        }
    }
    protected void tvGType_SelectedNodeChanged(object sender, EventArgs e)
    {
        string sSeleNodeText = tvGType.SelectedValue.ToString();
        if(sSeleNodeText=="course")
        {
            Label2.Visible = true;
            ddlCondition.Visible = true;
            Label1.Visible = true;
            txtKey.Visible = true;
            btnSel.Visible = true;

            courseInfo.Visible = true;
            classInfo.Visible = false;
            string sqlstr = "select * from TB_Course_info";
            sqloperate.gvDataBind(courseInfo, sqlstr);
        }
        else if(sSeleNodeText=="考试"||sSeleNodeText=="考查")
        {
            Label2.Visible = true;
            ddlCondition.Visible = true;
            Label1.Visible = true;
            txtKey.Visible = true;
            btnSel.Visible = true;

            courseInfo.Visible = true;
            classInfo.Visible = false;
            string sqlstr = "select * from TB_Course_info where TestSty='" + sSeleNodeText + "'";
            sqloperate.gvDataBind(courseInfo, sqlstr);
        }
        else 
        {
            Label2.Visible = false;
            ddlCondition.Visible = false;
            Label1.Visible = false;
            txtKey.Visible = false;
            btnSel.Visible = false;

            courseInfo.Visible = false;
            classInfo.Visible = true;

            string sqlstr = "select * from TC_Class where SpecialityNo='" + sSeleNodeText + "'";
            sqloperate.gvDataBind(classInfo, sqlstr);
        }
        
    }
    protected void courseInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        courseInfo.PageIndex = e.NewPageIndex;
        this.gvbind();
    }
    protected void btnSel_Click(object sender, EventArgs e)
    {
        this.gvbind();
    }
    public void gvbind()
    {
        if (txtKey.Text == "")
        {
            string sqlstr = "select * from TB_Course_info";
            sqloperate.gvDataBind(courseInfo, sqlstr);
        }
        else
        {
            string sqlstr = "select * from TB_Course_info where "
                + ddlCondition.SelectedValue + " like '%" + txtKey.Text.Trim() + "%'";
            sqloperate.gvDataBind(courseInfo, sqlstr);
        }
    }
}
