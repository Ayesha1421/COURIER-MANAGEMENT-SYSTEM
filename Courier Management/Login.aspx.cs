using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Xml;
using System.Xml.Linq;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["CargoDatabaseConnectionString"].ConnectionString;
    public string User1 = "Vishal";
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        using (MySqlConnection con4 = new MySqlConnection(constr))
        {
            using (MySqlCommand cmd4 = new MySqlCommand("select * from UserLogin where username='"+txtuserid.Text+"' and Password='"+txtpassword.Text+"'"))
            {
                using (MySqlDataAdapter sda4 = new MySqlDataAdapter())
                {
                    cmd4.Connection = con4;
                    sda4.SelectCommand = cmd4;
                    using (DataTable dt = new DataTable())
                    {
                       sda4.Fill(dt);
                       if (dt.Rows.Count > 0)
                       {

                           Response.Redirect("FrmBooking.aspx");
                       }
                       else
                       {
                           Label1.Text = "Invalid Login..";
                       }
                    
                    }
                }
            }

        }

    }


}

