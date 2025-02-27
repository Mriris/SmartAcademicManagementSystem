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

public partial class MemberManage_Register : System.Web.UI.Page
{
    
    SqlOperate sqloperate = new SqlOperate();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            sqlconn.Open();
            string sqlstr = "select * from tb_Image";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
            DataSet myds = new DataSet();
            myda.Fill(myds, "tb_Image");
            ddlPhoto.DataSource = myds.Tables["tb_Image"];
            ddlPhoto.DataTextField = "Image";
            ddlPhoto.DataBind();
            imgPhoto.ImageUrl = ddlPhoto.SelectedValue;
            sqlconn.Close();
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string sqltest = "select * from tb_Member where MemberName='" + this.txtLoginName.Text + "'";
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand(sqltest, sqlconn);
        SqlDataReader read = sqlcom.ExecuteReader();
        read.Read();
        if (read.HasRows)
        {
            if (this.txtLoginName.Text.Trim() == read["MemberName"].ToString().Trim())
            {
                Response.Write("<script language='javascript'>alert('该会员已经注册过');localtion='Register.aspx'</script>");
                return;
            }
        }
        string sqlstr = "insert into tb_Member "
            + "(MemberName,MemberSex,MemberPWD,MemberTName,"
            + "MemberQue,MemberAns,MemberPhone,MemberEmail,MemberCity,MemberAddress,MemberPostCode,MemberPhoto)"
            + "values('" + txtLoginName.Text + "','" + ddlSex.SelectedValue
            + "','" + txtPwd.Text + "','" + txtTName.Text + "','" + txtQuePwd.Text
            + "','" + txtAnsPwd.Text + "','" + txtTel.Text + "','" + txtEmail.Text
            + "','" + ddlCity.SelectedValue + "','" + txtAddress.Text + "','" + txtPostCode.Text + "','" + ddlPhoto.Text + "')";
        sqloperate.DataCom(sqlstr);
        sqlconn.Close();
        Session["regName"] = txtLoginName.Text.Trim();
        Response.Redirect("SuccReg.aspx");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtLoginName.Text = "";
        txtPwd.Text = "";
        txtTName.Text = "";
        txtQuePwd.Text = "";
        txtAnsPwd.Text = "";
        txtTel.Text = "";
        txtEmail.Text = "";
        txtAddress.Text = "";
        txtPostCode.Text = "";
        txtLoginName.Focus();
    }
    protected void btnTest_Click(object sender, EventArgs e)
    {
        if (txtLoginName.Text == "")
        {
            Response.Write("<script language='javascript'>alert('会员登录名不能为空！');localtion='Register.aspx'</script>");
        }
        else
        {
            string sqlstr = "select * from tb_Member where MemberName='" + this.txtLoginName.Text + "'";
            sqlconn.Open();
            SqlCommand sqlcom = new SqlCommand(sqlstr, sqlconn);
            SqlDataReader read = sqlcom.ExecuteReader();
            read.Read();
            if (read.HasRows)
            {
                if (this.txtLoginName.Text.Trim() == read["MemberName"].ToString().Trim())
                {
                    Response.Write("<script language='javascript'>alert('该会员已经注册过');localtion='Register.aspx'</script>");
                    return;
                }
            }
            else
            {
                Response.Write("<script language='javascript'>alert('您可以进行正常注册');localtion='Register.aspx'</script>");
            }
            read.Close();
            sqlconn.Close();
        }
    }
    protected void ddlPhoto_SelectedIndexChanged(object sender, EventArgs e)
    {
        imgPhoto.ImageUrl = ddlPhoto.SelectedValue;
    }
}
