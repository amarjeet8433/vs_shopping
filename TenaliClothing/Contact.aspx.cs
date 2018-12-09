using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindCartNumber();

        if (Session["USERNAME"] != null)
        {
            btnSignUp.Visible = false;
            btnSignIn.Visible = false;
            btnSignOut.Visible = true;
        }
        else
        {
            btnSignUp.Visible = true;
            btnSignIn.Visible = true;
            btnSignOut.Visible = false;
        }
    }

    private void BindCartNumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] ProductArray = CookiePID.Split(',');
            int ProductCount = ProductArray.Length;
            pCount.InnerText = ProductCount.ToString();
        }
        else
        {
            pCount.InnerText = 0.ToString();
        }
    }
    protected void btnSignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("Default.aspx");
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into FeedBack values('" + txtName.Text + "','" + txtFeedback.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            txtName.Text = string.Empty;
            txtFeedback.Text = string.Empty;
        }
    }
}