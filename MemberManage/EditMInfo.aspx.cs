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

public partial class MemberManage_EditMInfo : System.Web.UI.Page
{
    SqlOperate sqloperate = new SqlOperate();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["MName"] != null)
            {
                sqlconn.Open();
                string sqlstr = "Select * from tb_Member where MemberName='" + Session["MName"].ToString() + "'";
                SqlDataAdapter myApter = new SqlDataAdapter(sqlstr, sqlconn);
                DataSet myDS = new DataSet();
                myApter.Fill(myDS, "tb_Member");
                DataRowView rowView = myDS.Tables["tb_Member"].DefaultView[0];
                txtUserID.Text = Convert.ToString(rowView["MemberID"]);
                txtLoginName.Text = Convert.ToString(rowView["MemberName"]);
                txtPwd.Text = Convert.ToString(rowView["MemberPWD"]);
                txtTName.Text = Convert.ToString(rowView["MemberTName"]);
                txtQuePwd.Text = Convert.ToString(rowView["MemberQue"]);
                txtAnsPwd.Text = Convert.ToString(rowView["MemberAns"]);
                txtTel.Text = Convert.ToString(rowView["MemberPhone"]);
                txtEmail.Text = Convert.ToString(rowView["MemberEmail"]);
                ddlCity.SelectedValue = Convert.ToString(rowView["MemberCity"]);
                txtAddress.Text = Convert.ToString(rowView["MemberAddress"]);
                txtPostCode.Text = Convert.ToString(rowView["MemberPostCode"]);
                //txtMoney.Text = Convert.ToString(rowView["MemberMoney"]);
                string sqlstrbind = "select * from tb_Image";
                SqlDataAdapter mydabind = new SqlDataAdapter(sqlstrbind, sqlconn);
                DataSet mydsbind = new DataSet();
                mydabind.Fill(mydsbind, "tb_Image");
                ddlPhoto.DataSource = mydsbind.Tables["tb_Image"];
                ddlPhoto.DataTextField = "Image";
                ddlPhoto.DataBind();
                iGPhoto.ImageUrl = Convert.ToString(rowView["MemberPhoto"]);
                if (Convert.ToString(rowView["MemberSex"]).Trim() == "男")
                {
                    ddlSex.SelectedIndex = 0;
                }
                if (Convert.ToString(rowView["MemberSex"]).Trim() == "女")
                {
                    ddlSex.SelectedIndex = 1;
                }
                sqlconn.Close();
            }
            else
                Response.Write("<script>alert('您还没有登录，请登录后再使用，谢谢！');</script>");
        }
    }
    protected void btnModify_Click(object sender, EventArgs e)
    {
        string sqlstr = "update tb_Member set MemberName='" + txtLoginName.Text
            + "',MemberSex='" + ddlSex.Text + "',MemberPWD='" + txtPwd.Text
            + "',MemberTName='" + txtTName.Text + "',MemberQue='" + txtQuePwd.Text
            + "',MemberAns='" + txtAnsPwd.Text + "',MemberPhone='" + txtTel.Text
            + "',MemberEmail= '" + txtEmail.Text + "',MemberCity = '" + ddlCity.SelectedValue 
            + "',MemberAddress= '" + txtAddress.Text + "',MemberPostCode='"
            + txtPostCode.Text + "',MemberPhoto='" + ddlPhoto.SelectedValue 
            + "',MemberMoney='" + "0" + "' where MemberID = '" + txtUserID.Text + "'";
        sqloperate.DataCom(sqlstr);
        Response.Write("<script lanuage=javascript>alert('修改成功');location='javascript:history.go(-1)'</script>");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("..//index.aspx");
    }
    protected void ddlPhoto_SelectedIndexChanged(object sender, EventArgs e)
    {
        iGPhoto.ImageUrl = ddlPhoto.SelectedValue;
    }
}