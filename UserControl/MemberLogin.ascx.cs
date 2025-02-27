using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class UserControl_MemberLogin : System.Web.UI.UserControl
{
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["MName"] != null)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                MName.Text = Session["MName"].ToString();
            }
        }
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand("proMemberInfo", sqlconn);
        sqlcom.CommandType = CommandType.StoredProcedure;
        sqlcom.Parameters.Add("@MemberName", SqlDbType.VarChar, 20).Value = txtMName.Text.Trim();
        sqlcom.Parameters.Add("@MemberPwd", SqlDbType.VarChar, 20).Value = txtMPwd.Text.Trim();
        SqlDataReader read = sqlcom.ExecuteReader();
        if (read.Read())
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            MName.Text = txtMName.Text;
            Session["MName"] = txtMName.Text.Trim();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            Response.Write("<script>alert('您输入的用户名或密码错误，请重新输入！');location='javascript:history.go(-1)';</script>");
        }
    }
    protected void lbtnLogout_Click(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        txtMName.Text = "";
        txtMPwd.Text = "";
        Session.Clear();
        Session.Abandon();
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}
