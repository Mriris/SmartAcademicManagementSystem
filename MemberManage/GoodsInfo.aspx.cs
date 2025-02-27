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

public partial class MemberManage_GoodsInfo : System.Web.UI.Page
{
    SqlOperate sqloperate = new SqlOperate();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gvGoodsInfo.Visible = true;
            workerInfo.Visible = false;
            string sqlstr = "select * from TB_Student_Info";
            sqloperate.gvDataBind(gvGoodsInfo, sqlstr);
        }
    }
    protected void tvGType_SelectedNodeChanged(object sender, EventArgs e)
    {
        string sSeleNodeText = tvGType.SelectedValue.ToString();
        if (sSeleNodeText == "worker")
        {
            Label2.Visible = false;
            ddlCondition.Visible = false;
            Label1.Visible = false;
            txtKey.Visible = false;
            btnSel.Visible = false;

            gvGoodsInfo.Visible = false;
            workerInfo.Visible = true;
            string sqlstr = "select * from TB_Tutor_Info";
            sqloperate.gvDataBind(workerInfo, sqlstr);
        }
        else if (sSeleNodeText == "教师" || sSeleNodeText == "导员")
        {
            Label2.Visible = false;
            ddlCondition.Visible = false;
            Label1.Visible = false;
            txtKey.Visible = false;
            btnSel.Visible = false;

            gvGoodsInfo.Visible = false;
            workerInfo.Visible = true;
            string sqlstr = "select * from TB_Tutor_Info where Category='" + sSeleNodeText + "'";
            sqloperate.gvDataBind(workerInfo, sqlstr);
        }
        else
        {
            Label2.Visible = true;
            ddlCondition.Visible = true;
            Label1.Visible = true;
            txtKey.Visible = true;
            btnSel.Visible = true;

            gvGoodsInfo.Visible = true;
            workerInfo.Visible = false;

            string sqlstr;
            if (sSeleNodeText == "stu")
            {
                sqlstr = "select * from TB_Student_Info";
            }
            else
            {
                sqlstr = "select * from TB_Student_Info where Grade='" + sSeleNodeText + "' or ClassID='" + sSeleNodeText + "' or SpecialityNo='" + sSeleNodeText + "'";
            }
            sqloperate.gvDataBind(gvGoodsInfo, sqlstr);
        }
    }
    protected void gvGoodsInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvGoodsInfo.PageIndex = e.NewPageIndex;
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
            string sqlstr = "select * from TB_Student_Info";
            sqloperate.gvDataBind(gvGoodsInfo, sqlstr);
        }
        else
        {
            string sqlstr = "select * from TB_Student_Info where "
                + ddlCondition.SelectedValue + " like '%" + txtKey.Text.Trim() + "%'";
            sqloperate.gvDataBind(gvGoodsInfo, sqlstr);
        }
    }
}
