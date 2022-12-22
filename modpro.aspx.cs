using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class modpro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();

        string requete = "";
        if (!IsPostBack)
        {
            requete = "select idproduit from Produits";
            SqlCommand com = new SqlCommand(requete, n);
            SqlDataReader dr = com.ExecuteReader();
            DropDownList1.Items.Clear();


            while (dr.Read())
            {
                DropDownList1.Items.Add(dr.GetInt32(0).ToString());
            }
            n.Close();

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int a = Int32.Parse(DropDownList1.SelectedItem.ToString());
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();

        string requete = "";
        requete = "select  nom, prix from Produits where idproduit=" + a + " ";
        SqlCommand com = new SqlCommand(requete, n);

        SqlDataReader dr = com.ExecuteReader();
        //DropDownList1.Items.Clear();
        if (dr.Read())
        {
            TextBox1.Text = dr.GetString(0);
            TextBox2. = dr.GetInt32(1);
           
        }
        n.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}