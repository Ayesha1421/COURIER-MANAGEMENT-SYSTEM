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
using System.Data.SqlClient;

public partial class UserComplain : System.Web.UI.Page
{
    public string str = "Server  = (local);Database = CourierService;Integrated Security  = SSPI";
    public string OfficeId;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Submit()
    {
        SqlConnection con = new SqlConnection(str);
        try
        {

            SqlCommand cmd = new SqlCommand("insert into Complaint(ID,OfficeId,Complaint,UserId)values(@ID,@OfficeId,@Complaint,@UserId)", con);

            cmd.Parameters.Add(new SqlParameter("@ID",SqlDbType.Int));
            cmd.Parameters.Add(new SqlParameter("@OfficeId", SqlDbType.BigInt, 8));
            cmd.Parameters.Add(new SqlParameter("@Complaint", SqlDbType.NVarChar, 50));
            cmd.Parameters.Add(new SqlParameter("@UserId", SqlDbType.NVarChar, 50));
            cmd.Parameters["@OfficeId"].Value = OfficeId;
            cmd.Parameters["@ID"].Value = int.Parse(DropDownList1.SelectedValue);
            cmd.Parameters["@Complaint"].Value = txtComplaint.Text;
            cmd.Parameters["@UserId"].Value = txtUserID.Text;
            con.Open();
            cmd.ExecuteNonQuery();
            lblMessage.Text = "Submitted";



        }
        catch (Exception ex)
        {

            lblMessage.Text = ex.Message;

        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(str);

        int flag = 0;

        try
        {
            SqlCommand cmd = new SqlCommand("select UserId,OfOffice from  ManagerDetail where UserID = '" + txtUserID.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                OfficeId = dr[1].ToString();

                flag = 1;
            }
            else
            {
                flag = 0;

            }


        }
        catch (Exception ex)
        {


            lblMessage.Text = ex.Message;
        }

        finally
        {
            con.Close();
        }

        if (flag == 0)
        {
            lblMessage.Text = "This User Id does'nt exit.Please enter the valid UserId";
        }
        else
        {
            Submit();
        }
    }
}
