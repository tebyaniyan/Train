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

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["Username"]) == string.Empty)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void BtnBuy_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchResult.aspx");
    }
    protected void BtnChangePassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
    protected void BtnSendMessage_Click(object sender, EventArgs e)
    {
        Response.Redirect("ContactUs.aspx");
    }
    protected void BtnExit_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
    protected void BtnMessages_Click(object sender, EventArgs e)
    {
        GridViewVote.Visible = true;
    }
}
