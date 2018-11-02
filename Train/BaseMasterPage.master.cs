using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class BaseMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LblTime.Text = Convert.ToString(DateTime.Now);
    }
    protected void TimerTime_Tick(object sender, EventArgs e)
    {
        LblTime.Text = Convert.ToString(DateTime.Now);
    }
}
