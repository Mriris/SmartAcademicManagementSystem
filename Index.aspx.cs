using System;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["MName"] == null || Session["MName"].ToString() == "")
        {
            mainframe.Visible = false;
            mainframe2.Visible = false;
            mainframe3.Visible = false;
            ibtnGName.Visible = false;
            gradeManage.Visible = false;
            ibtnGoods2.Visible = false;
        }
        else
        {
            ibtnGName.Visible = true;
            gradeManage.Visible = true;
            ibtnGoods2.Visible = true;
        }
        /*if (Session["gpt"] != null)
        {
            testL.Text = Session["gpt"].ToString();
        }*/
    }
    protected void PersonM(object sender, EventArgs e)
    {
        mainframe.Visible = true;
        mainframe2.Visible = false;
        mainframe3.Visible = false;
        //Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void MetterM(object sender, EventArgs e)
    {
        mainframe.Visible = false;
        mainframe2.Visible = true;
        mainframe3.Visible = false;
        //Response.Redirect(Request.Url.AbsoluteUri);
    }
    protected void GradeM(object sender, EventArgs e)
    {
        mainframe.Visible = false;
        mainframe2.Visible = false;
        mainframe3.Visible = true;
        //Response.Redirect(Request.Url.AbsoluteUri);
    }
}
