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

public partial class MemberManage_SuccReg : System.Web.UI.Page
{
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            labMName.Text = Session["regName"].ToString();
            sqlconn.Open();
            string sqlstr = "select MemberID,MemberPWD from tb_Member where MemberName='" + Session["regName"].ToString() + "'";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr,sqlconn);
            DataSet myds = new DataSet();
            myda.Fill(myds,"tb_Member");
            DataRowView mydrv = myds.Tables["tb_Member"].DefaultView[0];
            labMID.Text = Convert.ToString(mydrv.Row["MemberID"]);
            labMPwd.Text = Convert.ToString(mydrv.Row["MemberPWD"]);
            sqlconn.Close();
        }
    }
}
