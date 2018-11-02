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
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection MyConn = new SqlConnection();
        MyConn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\DataBase.mdf;Integrated Security=True;User Instance=True";

        SqlCommand MyComm = new SqlCommand();
        MyComm.CommandType = CommandType.Text;
        MyComm.Connection = MyConn;
        MyComm.CommandText = string.Format("Select password from Users where username = '{0}'", TxtUsername.Text);

        SqlCommand My = new SqlCommand();
        My.CommandType = CommandType.Text;
        My.Connection = MyConn;
        My.CommandText = string.Format("Select isadmin from Users where username = '{0}'", TxtUsername.Text);

        MyConn.Open();
        String Password = Convert.ToString(MyComm.ExecuteScalar());
        String IsAdmin = Convert.ToString(My.ExecuteScalar());
        MyConn.Close();

        if (Password == TxtPassword.Text)
        {
            if (CheckBox1.Checked == true)
            {
                Response.Cookies.Get("Username").Value = TxtUsername.Text;
                Response.Cookies.Get("Username").Expires = DateTime.Today.AddDays(14);
            }
            Session.Add("Username", TxtUsername.Text);
            Session.Add("IsAdmin", IsAdmin);

            if (IsAdmin == "1")
                Response.Redirect("AdminPanel.aspx");
            else
                Response.Redirect("Home.aspx");
        }
        else
        {
            LblError.Text = "Wrong Password";
        }
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect(string.Format("SearchResult.aspx?Destination={0}&Model={1}&Source={2}&YekSare={3}", DropDownListDestination.Text, DropDownListDegree.Text, DropDownListSource.Text, DropDownListYekSare.Text));
    }
}
