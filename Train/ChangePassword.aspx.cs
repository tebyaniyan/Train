using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["Username"]) == string.Empty)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Btnexit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void BtnChange_Click(object sender, EventArgs e)
    {
        SqlConnection MyConn = new SqlConnection();
        MyConn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\DataBase.mdf;Integrated Security=True;User Instance=True";

        SqlCommand MyComm = new SqlCommand();
        MyComm.Connection = MyConn;
        MyComm.CommandType = CommandType.Text;
        MyComm.CommandText = string.Format("select password from users where username = '{0}'", Convert.ToString(Session["Username"]));

        MyConn.Open();
        string Password = Convert.ToString(MyComm.ExecuteScalar());
        MyConn.Close();

        if (Password == Txtoldpass.Text)
        {
            MyComm.Connection = MyConn;
            MyComm.CommandType = CommandType.Text;
            MyComm.CommandText = string.Format("update users set password = '{0}' where username = '{1}'", Txtnewpass.Text, Convert.ToString(Session["Username"]));

            MyConn.Open();
            MyComm.ExecuteNonQuery();
            MyConn.Close();

            Response.Redirect("Home.aspx");
        }
        else
        {
            LblMessage.Text = "رمز ورود قدیمی شما صحیح نیست";
        }
    }
}
