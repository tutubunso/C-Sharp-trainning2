using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Personnes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();
        string per = "insert into Personne (nom,prenom,email,username,password,statut) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+TextBox5.Text+"','client')";
        SqlCommand perAdd = new SqlCommand(per, n);
        perAdd.ExecuteNonQuery();
        Response.Write("<script>alert('erengister avec succes')</script>");

        Response.Redirect("Authentification.aspx");

      
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
protected void search_Click(object sender, EventArgs e)
    {
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();

        string requete = "SELECT nom,prix from Produit  where (Per.nom LIKE '%" + keyword.Text + "%' or Per.prenom LIKE '%" + keyword.Text+"%');
        SqlCommand com = new SqlCommand(requete, n);

        SqlDataReader dr = com.ExecuteReader();
        BulletedList1.Items.Clear();
        while (dr.Read())
        {
            Response.Write(dr);
            BulletedList1.Items.Add("Nom : " + dr.GetString(0).ToString() + "  Prix: " + dr.GetString(1).ToString());
        }
        n.Close();
        
    }