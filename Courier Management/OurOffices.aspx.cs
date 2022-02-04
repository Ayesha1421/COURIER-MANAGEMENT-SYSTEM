using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

public partial class OurOffices : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["CargoDatabaseConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        BinddropdownLoad();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Binddropdown(txtsearch.Text);
    }


    private void Binddropdown(string txt)
    {

        using (MySqlConnection con4 = new MySqlConnection(constr))
        {
            using (MySqlCommand cmd4 = new MySqlCommand("SELECT * from mt_office where office like '%" + txt + "%'"))
            {
                using (MySqlDataAdapter sda4 = new MySqlDataAdapter())
                {
                    cmd4.Connection = con4;
                    sda4.SelectCommand = cmd4;
                    using (DataTable dt = new DataTable())
                    {
                        sda4.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();


                    }
                }
            }

        }
    }

    private void BinddropdownLoad()
    {

        using (MySqlConnection con4 = new MySqlConnection(constr))
        {
            using (MySqlCommand cmd4 = new MySqlCommand("SELECT * from mt_office"))
            {
                using (MySqlDataAdapter sda4 = new MySqlDataAdapter())
                {
                    cmd4.Connection = con4;
                    sda4.SelectCommand = cmd4;
                    using (DataTable dt = new DataTable())
                    {
                        sda4.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();


                    }
                }
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constr))
        {

            using (MySqlCommand cmd = new MySqlCommand("insert into mt_office (Office) values(@Office)"))
            {

                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@Office", txtoffice.Text);

                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    BinddropdownLoad();
                }
            }
        }
    }
}