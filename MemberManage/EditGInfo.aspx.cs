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
using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using MathNet.Numerics;
using System.Collections.Generic;
using EllipticCurve.Utils;

public partial class MemberManage_EditGInfo : System.Web.UI.Page
{
    SqlOperate sqloperate = new SqlOperate();
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string strGTypeID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            sqlconn.Open();
            string strid = Page.Request.QueryString["GradID"];
            string sqlstr0 = "select * from TB_Select_Course where GradID='" + strid + "'";
            //sqloperate.gvDataBind(sc, sqlstr0);
            string sqlstr = "select * from TB_Student_Info where GradID='" + strid + "'";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
            DataSet myds = new DataSet();
            myda.Fill(myds, "TB_Student_Info");
            DataRowView mydrv = myds.Tables["TB_Student_Info"].DefaultView[0];
            txtGID.Text = Convert.ToString(mydrv.Row["GradID"]);
            txtGName.Text = Convert.ToString(mydrv.Row["GradName"]);
            txtGType.Text = Convert.ToString(mydrv.Row["ClassID"]);
            txtGStore.Text = Convert.ToString(mydrv.Row["Grade"]);
            txtGPrice.Text = Convert.ToString(mydrv.Row["SpecialityNo"]);
            txtGDate.Text = Convert.ToString(mydrv.Row["IDcardNo"]);
            //txtGIntro.Text = Convert.ToString(mydrv.Row["Homeland"])+"…";

            int img = Convert.ToInt32(txtGType.Text);
            img = img % 16;
            if (img < 1 || img > 16)
            {
                img = 1;
            }

            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            //SqlDataAdapter myda2 = new SqlDataAdapter("select * from tb_Image where ImageID = '" + img.ToString() + "'", sqlconn);
            SqlCommand myda2 = new SqlCommand("select * from tb_Image where ImageID = '" + img.ToString() + "'", sqlconn);
            SqlDataReader reader = myda2.ExecuteReader();
            string column1 = "";
            while (reader.Read())
            {
                // 假设您的查询结果包含两列：Column1 和 Column2
                column1 = reader["Image"].ToString();
            }

            iGPhoto.ImageUrl = column1;
            //iGPhoto.ImageUrl = "Image//例图//推荐商品.jpg";
            strGTypeID = Convert.ToString(mydrv.Row["SpecialityNo"]);
        }
    }



    protected void btnShop_Click(object sender, EventArgs e)
    {
        if (Session["MName"] == null)
        {
            Response.Write("<script>alert('尚未登录，无操作权限！');location='javascript:history.go(-1)';</script>");
        }
        else
        {
            sqlconn.Open();
            string strid = Page.Request.QueryString["GradID"];
            string sqlstrbind = "select * from TB_Student_Info where GradID='" + strid + "'";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstrbind, sqlconn);
            DataSet myds = new DataSet();
            myda.Fill(myds, "TB_Student_Info");
            DataRowView mydrv = myds.Tables["TB_Student_Info"].DefaultView[0];
            strGTypeID = Convert.ToString(mydrv.Row["SpecialityNo"]);
            string sqlstr = "insert into tb_OrderInfo"
                + "(OrderMember,GoodsID,GoodsName,GoodsTypeID,GoodsTypeName,GoodsPrice,IsCheckout)"
                + " values('" + Session["MName"].ToString() + "','" + txtGID.Text.Trim() + "','"
                + txtGName.Text.Trim() + "','" + strGTypeID.Trim() + "','" + txtGType.Text.Trim()
                + "','" + txtGPrice.Text.Trim() + "','否')";
            sqloperate.DataCom(sqlstr);
            Response.Redirect("Shopping.aspx");
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected async void btnGreet_Click(object sender, EventArgs e)
    {
        iGPhoto.Visible = false;
        TextBox1.Visible = true;
        OpenAiService gptGe = new OpenAiService();

        StringBuilder results = new StringBuilder();

        using (SqlConnection connection = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]))
        {
            string commandSql = "select CourseName,Score from TB_Select_Course,TB_Course_info where TB_Course_info.CourseID=TB_Select_Course.CourseID and TB_Select_Course.GradID='" + txtGID.Text + "'";
            SqlCommand command = new SqlCommand(commandSql, connection);
            connection.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                // 假设您的查询结果包含两列：Column1 和 Column2
                string column1 = reader["CourseName"].ToString();
                string column2 = reader["Score"].ToString();
                if (column2 == "")
                {
                    column2 = "尚未考试";
                }
                else
                {
                    column2 += "/100";
                }
                // 格式化并添加到结果字符串中
                results.AppendLine($"{column1}:{column2}。");
            }
        }



        string gptstr = "以下是计算机专业" + txtGName.Text + "同学的成绩：" + results.ToString() + "请根据科目学习情况和科目成绩得分，对该同学进行职业生涯规划。如果我没有输入成绩，请终止对话，不可自行生成成绩。要求精简，最高300token，最低不限";
        string response = await gptGe.GetGptResponse(gptstr);
        //txtGDate.Text = gptstr;
        TextBox1.Text = response;
        //Session["gpt"] = response;
    }



}
