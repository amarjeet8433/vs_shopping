using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProductRepeater();
        }
    }

    private void BindProductRepeater()
    {
        String CS = ConfigurationManager.ConnectionStrings["MyDatabaseConnectionString1"].ConnectionString;
        using(SqlConnection con=new SqlConnection(CS))
        {
            using(SqlCommand cmd = new SqlCommand("procBindAllProducts",con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using(SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dtProduct = new DataTable();
                    sda.Fill(dtProduct);
                    rptrProducts.DataSource = dtProduct;
                    rptrProducts.DataBind();
                }
            }
        }
    }
}