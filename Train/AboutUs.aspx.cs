﻿using System;
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

public partial class AboutUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        if (Convert.ToString(Session["username"]) == string.Empty)
            Response.Redirect("Default.aspx");
        else
            Response.Redirect("Home.aspx");
    }
}
