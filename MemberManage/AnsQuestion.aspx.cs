using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class MemberManage_AnsQuestion : System.Web.UI.Page
{
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand("select MemberQue from tb_Member  where MemberID='"
            + Convert.ToString(Session["MemberID"]) + "'", sqlconn);
        txtQuePwd.Text = Convert.ToString(sqlcom.ExecuteScalar());
        sqlconn.Close();
    }
    protected void btnSure_Click(object sender, EventArgs e)
    {
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand("select count(*) from tb_Member where MemberAns='"
            + txtAnsPwd.Text + "' and MemberID='" + Convert.ToString(Session["MemberID"]) + "'", sqlconn);
        int count = Convert.ToInt32(sqlcom.ExecuteScalar());
        if (count > 0)
        {
            Page.Response.Redirect("ShowPwd.aspx");
        }
        else
        {
            Response.Write("<script>alert('提示问题答案输入有误！');location='javascript:history.go(-1)'</script>");
            return;
        }
        sqlconn.Close();
    }
}
