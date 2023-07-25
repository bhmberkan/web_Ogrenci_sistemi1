using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Grafikler : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-AV1UIG0;Initial Catalog=web1;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        // sorgu 1
        baglanti.Open();
        SqlCommand komut = new SqlCommand("Execute Chart1", baglanti);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Chart1.Series["Dersler"].Points.AddXY(Convert.ToString(dr[0]), int.Parse(dr[1].ToString()));
        }
        baglanti.Close();

        // sorgu 2  // chart 3 kullanıyoz hacı unutma
        baglanti.Open();
        SqlCommand komut2 = new SqlCommand("Execute Graf2", baglanti);  
        SqlDataReader dr2 = komut.ExecuteReader();

        while (dr2.Read())
        {
            Chart3.Series["Cinsiyet"].Points.AddXY(Convert.ToString(dr2[0]), int.Parse(dr2[1].ToString()));
        }
        baglanti.Close();

        //sorgu 3 
        baglanti.Open();
        SqlCommand komut3 = new SqlCommand("Execute Chart3", baglanti);
        SqlDataReader dr3 = komut.ExecuteReader();

        while (dr3.Read())
        {
            Chart2.Series["Brans"].Points.AddXY(Convert.ToString(dr3[0]), int.Parse(dr3[1].ToString()));
        }
        baglanti.Close();

        //sorgu4 
        baglanti.Open();
        SqlCommand komut4 = new SqlCommand("Execute Chart4", baglanti);
        SqlDataReader dr4 = komut.ExecuteReader();

        while (dr4.Read())
        {
            Chart4.Series["Notlar"].Points.AddXY(Convert.ToString(dr4[0]), int.Parse(dr4[1].ToString()));
        }
        baglanti.Close();

    }
}