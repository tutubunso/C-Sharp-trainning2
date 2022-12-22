using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Authentification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();

        string drop1 = DropDownList1.SelectedItem.ToString();
        if (drop1=="Client") {
            string requete = "select * from Personne where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "' and statut = '"+ drop1 +"' ";
            SqlCommand com = new SqlCommand(requete, n);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Commandes.aspx");
            }
            else 
            {

                Response.Write("<script>alert('echec authentification')</script>");
            }
        }

        if (drop1 == "Admin")
        {
            string requete = "select * from Personne where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "' and statut = '" + drop1 + "' ";
            SqlCommand com = new SqlCommand(requete, n);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Produits.aspx");
            }
            else
            {

                Response.Write("<script>alert('echec authentification')</script>");
            }
        }
       
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();

        string drop1 = DropDownList1.SelectedItem.ToString();
        if (drop1 == "client")
        {
            string requete = "select * from Personne where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "' and statut = '" + drop1 + "' ";
            SqlCommand com = new SqlCommand(requete, n);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Commandes.aspx");
            }
            else
            {

                Response.Write("<script>alert('echec authentification')</script>");
            }
        }

        if (drop1 == "admin")
        {
            string requete = "select * from Personne where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "' and statut = '" + drop1 + "' ";
            SqlCommand com = new SqlCommand(requete, n);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Produits.aspx");
            }
            else
            {

                Response.Write("<script>alert('echec authentification')</script>");
            }
        }
    }
}