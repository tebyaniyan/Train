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

public partial class AdminPanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // if (User.Identity.IsAuthenticated == false)
        if (Convert.ToString(Session["Username"]) == string.Empty)
        {
            Response.Redirect("Login.aspx");
        }
        if (Convert.ToString(Session["IsAdmin"]) != "1")
        {
            Response.Redirect("Home.aspx");
        }

    }
    protected void BtnUsers_Click(object sender, EventArgs e)
    {
        GridView2.Visible = true;
        GridView3.Visible = false;
        GridView1.Visible = false;
        GridView4.Visible = false;

        LblID.Visible = false;
        LblSource.Visible = false;
        LblDestination.Visible = false;
        LblYekSare.Visible = false;
        LblModel.Visible = false;
        LblPrice.Visible = false;

        TxtID.Visible = false;
        TxtSource.Visible = false;
        TxtDestination.Visible = false;
        TxtYekSare.Visible = false;
        TxtModel.Visible = false;
        TxtPrice.Visible = false;

        BtnAdd.Visible = false;
    }
    protected void BtnMessag_Click(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        GridView3.Visible = true;
        GridView1.Visible = false;
        GridView4.Visible = false;

        LblID.Visible = false;
        LblSource.Visible = false;
        LblDestination.Visible = false;
        LblYekSare.Visible = false;
        LblModel.Visible = false;
        LblPrice.Visible = false;

        TxtID.Visible = false;
        TxtSource.Visible = false;
        TxtDestination.Visible = false;
        TxtYekSare.Visible = false;
        TxtModel.Visible = false;
        TxtPrice.Visible = false;

        BtnAdd.Visible = false;
    }
    protected void BtnProduct_Click(object sender, EventArgs e)
    {
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView1.Visible = true;
        GridView4.Visible = false;

        LblID.Visible = true;
        LblSource.Visible = true;
        LblDestination.Visible = true;
        LblYekSare.Visible = true;
        LblModel.Visible = true;
        LblPrice.Visible = true;

        TxtID.Visible = true;
        TxtSource.Visible = true;
        TxtDestination.Visible = true;
        TxtYekSare.Visible = true;
        TxtModel.Visible = true;
        TxtPrice.Visible = true;

        BtnAdd.Visible = true;
    }
    protected void BtnExit_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
    protected void BtnBuyinfo_Click(object sender, EventArgs e)
    {
        GridView4.Visible = true;
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView1.Visible = false;
        

        LblID.Visible = false;
        LblSource.Visible = false;
        LblDestination.Visible = false;
        LblYekSare.Visible = false;
        LblModel.Visible = false;
        LblPrice.Visible = false;

        TxtID.Visible = false;
        TxtSource.Visible = false;
        TxtDestination.Visible = false;
        TxtYekSare.Visible = false;
        TxtModel.Visible = false;
        TxtPrice.Visible = false;

        BtnAdd.Visible = false;
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "";

        SqlCommand comm = new SqlCommand();
        comm.Connection = conn;
        comm.CommandType = CommandType.Text;
        comm.CommandText = string.Format("insert into tickettravels (source, destination, yeksare, model, price) values ('{0}', '{1}', '{2}', '{3}', {4})", TxtSource.Text, TxtDestination.Text, TxtYekSare.Text, TxtModel.Text, Convert.ToInt32(TxtPrice.Text));

        conn.Open();
        try
        {
            comm.ExecuteNonQuery();
        }
        catch { }
        conn.Close();
    }
}
