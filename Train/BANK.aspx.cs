using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BANK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["username"]) == string.Empty)
            Response.Redirect("Login.aspx");
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}
