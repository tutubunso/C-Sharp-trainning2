using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Produits : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();
        string per = "insert into Produits (nom,prix) values('" + TextBox1.Text + "'," + TextBox2.Text + ")";
        SqlCommand perAdd = new SqlCommand(per, n);
        perAdd.ExecuteNonQuery();
        Response.Write("<script>alert('erengister avec succes')</script>");
    }
}