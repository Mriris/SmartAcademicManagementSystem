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

public partial class MemberManage_FindPWD : System.Web.UI.Page
{
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSure_Click(object sender, EventArgs e)
    {
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand("select count(*) from tb_Member where MemberID='" + txtMemberID.Text + "'", sqlconn);
        int count = Convert.ToInt32(sqlcom.ExecuteScalar());
        if (count > 0)
        {
            Session["MemberID"] = txtMemberID.Text;
            Response.Redirect("AnsQuestion.aspx");
        }
        else
        {
            Response.Write("<script>alert('没有该ID');location='javascript:history.go(-1)'</script>");
            return;
        }
        sqlconn.Close();
    }
}
