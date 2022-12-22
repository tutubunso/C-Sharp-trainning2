using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Paies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();
        string requete = "";
        requete = "select  total,idproduit from Produits,Commandes where Produits.idproduit = Commandes.produit order by idcommande desc";
        SqlCommand com = new SqlCommand(requete, n);
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {
            DropDownList2.Items.Add(dr.GetInt32(1).ToString());


        }
        n.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();

        string drop1 = DropDownList1.SelectedItem.ToString();
        string drop2 = DropDownList2.SelectedItem.ToString();

        string[] prod = drop1.Split(' ');
        string[] nb = drop2.Split(' ');

        string per = "insert into Paies (montant_paye,mode_payement,produit) values(" + TextBox1.Text + ",'" + prod[0] + "'," + nb[0] + ")";
        SqlCommand perAdd = new SqlCommand(per, n);
        perAdd.ExecuteNonQuery();
        Response.Write("<script>alert('erengister avec succes')</script>");
    }
}