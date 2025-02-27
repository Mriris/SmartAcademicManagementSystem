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

public partial class MemberManage_ShowPwd : System.Web.UI.Page
{
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand("select MemberPWD from tb_Member where MemberID='"
            + Convert.ToString(Session["MemberID"]) + "'", sqlconn);
        labMName.Text = Session["MemberID"].ToString();//接受FillUserID页传值
        labMPwd.Text = Convert.ToString(sqlcom.ExecuteScalar());
        sqlconn.Close();
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("..//index.aspx");
    }
}
