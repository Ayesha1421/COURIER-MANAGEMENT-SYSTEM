using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using MySql.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;


public partial class FrmBooking1 : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["CargoDatabaseConnectionString"].ConnectionString;
    protected void cboExpMonth_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constr))
        {

            using (MySqlCommand cmd = new MySqlCommand("insert into tr_customer (Name,Item,weight,SenderOff,recoff,type,exptrvDate,actualrvdate,orgin,destination) value(@Name,@Item,@weight,@SenderOff,@recoff,@type,@exptrvDate,@actualrvdate,@orgin,@destination)"))
            {

                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@Name", txtUserId.Text);
                    cmd.Parameters.AddWithValue("@Item", txtItem.Text);
                    cmd.Parameters.AddWithValue("@weight", txtWeigth.Text);
                    cmd.Parameters.AddWithValue("@SenderOff", cboOfficeR.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@recoff", cboOfficeS.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@type", cboWhether.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@exptrvDate", Expdate.Text);
                    cmd.Parameters.AddWithValue("@actualrvdate", txtAccdate.Text);
                    cmd.Parameters.AddWithValue("@orgin", cboOrigin.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@destination", cboDestination.SelectedItem.Text);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblmsg.Visible = true;
                }
            }
        }

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Binddropdown();
        }
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {

    }

    private void Binddropdown()
    {


        using (MySqlConnection con1 = new MySqlConnection(constr))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select Office from mt_office"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        cboOfficeR.DataSource = dt;
                        cboOfficeS.DataSource = dt;

                        cboOfficeR.DataTextField = "Office";
                        cboOfficeR.DataValueField = "Office";

                        cboOfficeS.DataTextField = "Office";
                        cboOfficeS.DataValueField = "Office";

                        cboOfficeR.DataBind();
                        cboOfficeS.DataBind();


                    }
                }
            }
        }
        using (MySqlConnection con1 = new MySqlConnection(constr))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select City from mt_city"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        cboOrigin.DataSource = dt;
                        cboDestination.DataSource = dt;

                        cboOrigin.DataTextField = "City";
                        cboDestination.DataValueField = "City";

                        cboOrigin.DataTextField = "City";
                        cboDestination.DataValueField = "City";

                        cboDestination.DataBind();
                        cboOrigin.DataBind();


                    }
                }
            }
        }

    }
}
