using System;
using System.Windows.Forms;
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

public partial class SearchResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["username"]) == string.Empty)
        {
            BtnBuy.Visible = false;
            LblCode.Visible = false;
            TxtCode.Visible = false;
        }
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["username"]) == string.Empty)
            Response.Redirect("Default.aspx");
        else
            Response.Redirect("Home.aspx");
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect(string.Format("SearchResult.aspx?Destination={0}&Model={1}&Source={2}&YekSare={3}", DropDownListDestination.Text, DropDownListDegree.Text, DropDownListSource.Text, DropDownListYekSare.Text));

    }
    protected void BtnAddToBasket_Click(object sender, EventArgs e)
    {

    }
    protected void BtnBuy_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection MyConn = new SqlConnection();
            MyConn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\DataBase.mdf;Integrated Security=True;User Instance=True";

            SqlCommand MyComm = new SqlCommand();
            MyComm.CommandType = CommandType.Text;
            MyComm.Connection = MyConn;
            MyComm.CommandText = string.Format("insert into Buy(Username,TicketCode,DateofBuy) VALUES ('{0}',{1},'{2}')", Convert.ToString(Session["username"]), Convert.ToInt32(TxtCode.Text), DateTime.Now);

            MyConn.Open();
            try
            {
                MyComm.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            MyConn.Close();
        }
        catch(Exception ex)
        {
            MessageBox.Show(ex.Message);
        }

            Response.Redirect("BANK.aspx");
        
    }
}
