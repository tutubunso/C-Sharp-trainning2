using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class Factures : System.Web.UI.Page
{
    public static int apayer, payer,rest;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Enabled = false;
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();
        string requete = "";
        requete = "select idproduit,nom,total from Produits,Commandes where Produits.idproduit = Commandes.produit order by idcommande desc";
        SqlCommand com = new SqlCommand(requete, n);
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {
            DropDownList1.Items.Add(dr.GetInt32(0) + " " + dr.GetString(1) + " " + dr.GetInt32(2));

        }
        n.Close();

        string chainee = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection m = new SqlConnection(chainee);
        m.Open();
        string requetee = "";
        requetee = "select montant_paye from Paies order by idpaie desc";
        SqlCommand come = new SqlCommand(requetee, m);
        SqlDataReader dri = come.ExecuteReader();

        while (dri.Read())
        {
            DropDownList2.Items.Add(dri.GetInt32(0).ToString());
            payer = dri.GetInt32(0);

        }
        m.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string pr = DropDownList1.SelectedItem.ToString();
        string[] pd = pr.Split(' ');
        apayer = Int32.Parse(pd[2]);
        rest = payer - apayer;
        TextBox1.Text = rest.ToString();

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string pr = DropDownList1.SelectedItem.ToString();
        string[] pd = pr.Split(' ');
        apayer = Int32.Parse(pd[2]);
        rest = payer-apayer;
        TextBox1.Text = rest.ToString();
    }
}