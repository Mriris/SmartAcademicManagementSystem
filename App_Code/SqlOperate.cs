using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

/// <summary>
/// SqlOperate 的摘要说明
/// </summary>
public class SqlOperate
{
    public SqlOperate()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    SqlConnection sqlconn = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    public void DataCom(string sqlstr)
    {
        sqlconn.Open();
        SqlCommand sqlcom = new SqlCommand(sqlstr, sqlconn);
        sqlcom.ExecuteNonQuery();
        sqlconn.Close();
    }
    public void gvDataBind(GridView gv, string sqlstr)
    {
        sqlconn.Open();
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
        DataSet myds = new DataSet();
        myda.Fill(myds, "tab");
        gv.DataSource = myds.Tables["tab"];
        gv.DataBind();
        sqlconn.Close();
    }
    public void dlDataBind(DataList dl, string sqlstr)
    {
        sqlconn.Open();
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
        DataSet myds = new DataSet();
        myda.Fill(myds);
        dl.DataSource = myds;
        dl.DataBind();
        sqlconn.Close();
    }
    public void ddlDataBind(DropDownList ddl, string sqlstr, string dvf)
    {
        sqlconn.Open();
        SqlDataAdapter myda = new SqlDataAdapter(sqlstr, sqlconn);
        DataSet myds = new DataSet();
        myda.Fill(myds);
        ddl.DataSource = myds;
        ddl.DataValueField = dvf;
        ddl.DataBind();
        sqlconn.Close();
    }
    public void insertGrade(string GradID, string CourseID, string TutorID, string Year, string Term, string Score)
    {
        string sqlInsert = "INSERT INTO TB_Grade_Info (GradID, CourseID, TutorID, Year, Term, Score) VALUES " + GradID + "," + CourseID + "," + TutorID + "," + Year + "," + Term + "," + Score;
        using (SqlCommand cmd = new SqlCommand(sqlInsert, sqlconn))
        {
            sqlconn.Open();
            cmd.ExecuteNonQuery();
        }
    }
}
