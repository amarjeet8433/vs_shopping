﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btPassRec_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from users where Email='" + tbEmailId.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("insert into ForgotPassRequests values('" + myGUID + "','" + Uid + "',getdate())", con);
                cmd1.ExecuteNonQuery();

                //send email
                String ToEmailAddress = dt.Rows[0][3].ToString();
                String Username = dt.Rows[0][1].ToString();
                String EmailBody = "Hi " + Username + ",<br/><br/> Click the link below to reset your password. <br/><br/> http://localhost:52092/RecoverPassword.aspx?Uid=" + myGUID;
                MailMessage PassRecMail = new MailMessage("singhamarjeet8433@gmail.com", ToEmailAddress);
                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";

                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "singhamarjeet8433@gmail.com",
                    Password = "8433570965"
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassRecMail);

                lblPassRec.Text = "Check your email to reset your Password.";
                lblPassRec.ForeColor = Color.Green;
            }
            else
            {
                lblPassRec.Text = "OOps This Email id DOES NOT Exist in our database !";
                lblPassRec.ForeColor = Color.Red;
            }
        }
    }
}