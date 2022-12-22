using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Commandes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Enabled = false;
        string chaine = "Data source = TUTU; initial catalog = Gestion_comptabilite; uid = bunso; pwd = Guy1021999; integrated Security=true";
        SqlConnection n = new SqlConnection(chaine);
        n.Open();
        string requete = "";
        requete = "select  idproduit,nom, prix from produits ";
        SqlCommand com = new SqlCommand(requete, n);
        SqlDataReader dr = com.ExecuteReader();

        while (dr.Read())
        {
            DropDownList1.Items.Add(dr.GetInt32(0) +" "+dr.GetString(1) + " " + dr.GetInt32(2));

        }
        n.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string pr = DropDownList1.SelectedItem.ToString();
        string[] Tpr = pr.Split(' ');
        int prix = Int32.Parse(Tpr[2]);
        int qt = Int32.Parse(DropDownList2.SelectedItem.ToString());
        int total = prix * qt;
        TextBox1.Text = total.ToString();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string pr = DropDownList1.SelectedItem.ToString();
        string[] Tpr = pr.Split(' ');
        int prix = Int32.Parse(Tpr[2]);
        int qt = Int32.Parse(DropDownList2.SelectedItem.ToString());
        int total = prix * qt;
        TextBox1.Text = total.ToString();
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

        string per = "insert into Commandes (produit,quantite,total) values(" + prod[0] + "," + nb[0] + ", "+ TextBox1.Text +")";
        SqlCommand perAdd = new SqlCommand(per, n);
        perAdd.ExecuteNonQuery();
        Response.Write("<script>alert('erengister avec succes')</script>");
        Response.Redirect("Paies.aspx");

    }
}