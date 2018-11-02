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

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void BtnSend_Click(object sender, EventArgs e)
    {
        SqlConnection MyConn = new SqlConnection();
        MyConn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\DataBase.mdf;Integrated Security=True;User Instance=True";

        SqlCommand MyComm = new SqlCommand();
        MyComm.CommandType = CommandType.Text;
        MyComm.Connection = MyConn;
        MyComm.CommandText = string.Format("select SecurityQuestion1 from users where username = '{0}'", TxtUsername.Text);

        MyConn.Open();
        LblQuestion.Text = Convert.ToString(MyComm.ExecuteScalar());
        MyConn.Close();

        TxtUsername.Visible = false;
        BtnSend.Visible = false;
        LblMessage.Visible = false;

        LblQuestion.Visible = true;
        TxtAnswer.Visible = true;
        BtnSubmit.Visible = true;
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection MyConn = new SqlConnection();
        MyConn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\DataBase.mdf;Integrated Security=True;User Instance=True";

        SqlCommand MyComm = new SqlCommand();
        MyComm.CommandType = CommandType.Text;
        MyComm.Connection = MyConn;
        MyComm.CommandText = string.Format("select answer1 from users where username = '{0}'", TxtUsername.Text);

        MyConn.Open();
        string answer = Convert.ToString(MyComm.ExecuteScalar());
        MyConn.Close();

        if (answer == TxtAnswer.Text)
        {
            MyComm.CommandText = string.Format("select password from users where username = '{0}'", TxtUsername.Text);

            MyConn.Open();
            string password = Convert.ToString(MyComm.ExecuteScalar());
            MyConn.Close();

            LblError.Text = string.Format("رمز ورود شما: \n {0}", password);
        }
        else
        {
            LblError.Text = "متاسفانه جواب شما اشتباه بود!";
            LblQuestion.Visible = false;
            TxtAnswer.Visible = false;
            BtnSubmit.Visible = false;

            LblDescription.Visible = true;
            BtnEmailSend.Visible = true;
        }
    }
    protected void BtnEmailSend_Click(object sender, EventArgs e)
    {
        SqlConnection MyConn = new SqlConnection();
        MyConn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\DataBase.mdf;Integrated Security=True;User Instance=True";

        SqlCommand MyComm = new SqlCommand();
        MyComm.CommandType = CommandType.Text;
        MyComm.Connection = MyConn;
        MyComm.CommandText = string.Format("select AlternateEmail from users where username = '{0}'", TxtUsername.Text);

        MyConn.Open();
        string AlternateEmail = Convert.ToString(MyComm.ExecuteScalar());
        MyConn.Close();

        if (AlternateEmail != null)
        {
            LblError.Text = "یک ایمیل حاوی رمز ورود به شما ارسال شده است. لطفا ایمیل خود را چک کنید";
        }
        else
        {
            LblError.Text = "شما ایمیل دوم نداشتید!";
        }
        LblDescription.Visible = false;
        BtnEmailSend.Visible = false;
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
