using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using MySql.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

public partial class SearchByBooking : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["CargoDatabaseConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Binddropdown();
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constr))
        {
            using (MySqlCommand cmd = new MySqlCommand("select Name,item,weight,senderoff,recoff,type,exptrvdate,actualrvdate,orgin,destination from  tr_customer where Name like '%" + cboBookingNo.SelectedItem.Value + "%'"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable BookDT = new DataTable())
                    {
                        sda.Fill(BookDT);

                        lblBookingNo.Text = BookDT.Rows[0]["Name"].ToString();
                        lblContainterNo.Text = BookDT.Rows[0]["item"].ToString();
                        lblweight.Text = BookDT.Rows[0]["weight"].ToString();
                        lblSender.Text = BookDT.Rows[0]["senderoff"].ToString();
                        lblRecieved.Text = BookDT.Rows[0]["recoff"].ToString();
                        lblType.Text = BookDT.Rows[0]["type"].ToString();
                        lblrvdate.Text = BookDT.Rows[0]["exptrvdate"].ToString();
                        lblorigin.Text = BookDT.Rows[0]["orgin"].ToString();
                        lblDestination.Text = BookDT.Rows[0]["destination"].ToString();


                    }


                }
            }
        }

    }

    private void Binddropdown()
    {


        using (MySqlConnection con1 = new MySqlConnection(constr))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select Distinct Name from tr_customer"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        cboBookingNo.DataSource = dt;


                        cboBookingNo.DataTextField = "Name";
                        cboBookingNo.DataValueField = "Name";


                        cboBookingNo.DataBind();


                    }
                }
            }
        }


    }
}
