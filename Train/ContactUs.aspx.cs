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

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSend_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\DataBase.mdf;Integrated Security=True;User Instance=True";

        SqlCommand comm = new SqlCommand();
        comm.Connection = conn;
        comm.CommandType = CommandType.Text;
        comm.CommandText = string.Format("insert into vote (name, email, title, text, date, answer, username) values ('{0}','{1}','{2}','{3}','{4}', '{5}', '{6}')", TxtName.Text, TxtEmail.Text, TxtTitle.Text, TxtText.Text, DateTime.Now, "هنوز پاسخی ارسال نشده است", Convert.ToString(Session["username"]));

        conn.Open();
        comm.ExecuteNonQuery();
        conn.Close();
        
        TxtEmail.Text = "";
        TxtName.Text = "";
        TxtText.Text = "";
        TxtTitle.Text = "";

        if(Convert.ToString(Session["username"]) == string.Empty)
            LblMessage.Text = "پیام شما با موفقیت به مدیر ارسال شد";
        else
            Response.Redirect("Home.aspx");
    }
}
