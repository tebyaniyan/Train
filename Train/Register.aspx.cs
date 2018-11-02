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

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        int sex = 0;
        if (RadioButtonFemale.Checked == true)
        {
            sex = 0;
        }
        else
        {
            sex = 0;
        }

        if (CheckBoxIAgree.Checked == false)
        {
            LblError.Text = "شما قوانین سایت را قبول نکرده اید";
        }
        else
        {
            SqlConnection MyConn = new SqlConnection();
            MyConn.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\DataBase.mdf;Integrated Security=True;User Instance=True";

            SqlCommand MyComm = new SqlCommand();
            MyComm.Connection = MyConn;
            MyComm.CommandType = CommandType.Text;
            MyComm.CommandText = "select Username From Users where username = '" + TxtUsername.Text + "'";
            MyConn.Open();
            String DBUsername = Convert.ToString(MyComm.ExecuteScalar());
            MyConn.Close();

            if (DBUsername != "")
            {
                LblError.Text = "نام کاربری از قبل وجود دارد";
            }
            else
            {
                MyComm.CommandText = string.Format("Insert Into Users Values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}', '{14}', '{15}', '{16}', '{17}',0)", TxtUsername.Text, TxtPassword.Text, TxtFirstName.Text, TxtLastName.Text, TxtBrithdayYear.Text, TxtBrithdayMonth.Text, TxtBrithdayDay.Text, sex, TxtEmail.Text, DropDownListCountry.Text, TxtCity.Text, TxtPostalCode.Text, TxtAddress.Text, TxtMobileNumber.Text, TxtOfficeNumber.Text, TxtSecurityQuestion1.Text, TxtAnswer1.Text, TxtAlternateEmail.Text);

                MyConn.Open();
                MyComm.ExecuteNonQuery();
                MyConn.Close();
                Response.Redirect("Login.aspx");
            }//end of inner else
        }//end of outer else
    }
}
