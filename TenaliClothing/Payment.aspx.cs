using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            BindPriceData();
        }
        else
        {
            Response.Redirect("SignIn.aspx");
        }
    }
    public void BindPriceData()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] CookieDataArray = CookieData.Split(',');
            if (CookieDataArray.Length > 0)
            {
                DataTable dtProductDetails = new DataTable();
                Int64 CartTotal = 0;
                Int64 Total = 0;

                for (int i = 0; i < CookieDataArray.Length; i++)
                {
                    string PID = CookieDataArray[i].ToString().Split('-')[0];
                    string SizeID = CookieDataArray[i].ToString().Split('-')[1];

                    String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        using (SqlCommand cmd = new SqlCommand("select A.*,dbo.getSizeName(" + SizeID + ") as SizeNamee,"
                            + SizeID + " as SizeIDD,SizeData.Name,SizeData.Extention from tblProducts A cross apply( select top 1 B.Name,Extention from tblProductImages B where B.PID=A.PID) SizeData where A.PID="
                            + PID + "", con))
                        {
                            cmd.CommandType = CommandType.Text;
                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                                sda.Fill(dtProductDetails);
                            }
                        }
                    }
                    CartTotal += Convert.ToInt64(dtProductDetails.Rows[i]["PPrice"]);
                    Total += Convert.ToInt64(dtProductDetails.Rows[i]["PSelPrice"]);
                }
                divPriceDetails.Visible = true;

                spanCartTotal.InnerText = CartTotal.ToString();
                spanTotal.InnerText = "₹ " + Total.ToString();
                spanDiscount.InnerText = "- " + (CartTotal - Total).ToString();

            }
            else
            {
                //TODO Show Empty Cart
                Response.Redirect("Products.aspx");
            }
        }
        else
        {
            //TODO Show Empty Cart
            Response.Redirect("Products.aspx");
        }
    }
    protected void btnDone_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("insert into tblPayment values('" + txtName.Text + "','" + txtAddress.Text + "','" + txtPinCode.Text + "')", con);
            con.Open();
            Int64 PaymentID = Convert.ToInt64(cmd.ExecuteNonQuery());
            
            List<string> values = new List<string>();
            values.Add(txtName.Text);
            values.Add(txtAddress.Text);
            values.Add(txtPinCode.Text);
            Session["CustInfo"] = values;

            Response.Redirect("ThankYou.aspx");
        }
    }
}