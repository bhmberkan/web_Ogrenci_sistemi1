using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NotGuncelle : System.Web.UI.Page
{
    int nid; 
    protected void Page_Load(object sender, EventArgs e)
    { if(Page.IsPostBack==false)
        {
            nid = Convert.ToInt32(Request.QueryString["NOTID"]);
            DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();

            TxtOgrId.Text = dt.NotGetir2(nid)[0].OGRENCIID.ToString();
            TxtOgrAdSoyad.Text = dt.NotGetir2(nid)[0].OGRENCIADSOYAD;
            TxtDersAd.Text = dt.NotGetir2(nid)[0].DERSAD;
            TxtSınav1.Text = dt.NotGetir2(nid)[0].SINAV1.ToString();
            TxtSınav2.Text = dt.NotGetir2(nid)[0].SINAV2.ToString();
            TxtSınav3.Text = dt.NotGetir2(nid)[0].SINAV3.ToString();
            TxtOrt.Text = dt.NotGetir2(nid)[0].ORTALAMA.ToString();
            TxtDurum.Text = dt.NotGetir2(nid)[0].DURUM.ToString();
        }

    }
    protected void BtnHesapla_Click(object sender, EventArgs e)
    {
        double ortalama, sinav1, sinav2, sinav3;
        sinav1 = Convert.ToInt32(TxtSınav1.Text);
        sinav2 = Convert.ToInt32(TxtSınav2.Text);
        sinav3 = Convert.ToInt32(TxtSınav3.Text);
        ortalama = (sinav1 + sinav2 + sinav3) / 3;
        TxtOrt.Text = ortalama.ToString("0.00");
        if(ortalama>35)
        {
            TxtDurum.Text = "True";
        }
        else
        {
            TxtDurum.Text = "False";
        }
    }

    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        nid = Convert.ToInt32(Request.QueryString["NOTID"]); // güncelleme yapmamasının sebebi bu satırın burda olmamasıydı
        // çünkü yukarıda ispostpack kısmında sayfayı yeniledğiğinde 0 alıyor garip bir şekilde neyse bu şekilde çözdüm

        
            DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
            dt.NotGuncelle(byte.Parse(TxtSınav1.Text), byte.Parse(TxtSınav2.Text), byte.Parse(TxtSınav3.Text), decimal.Parse(TxtOrt.Text), bool.Parse(TxtDurum.Text), nid);
            Response.Redirect("NotListesi.aspx");

        
       
    }
}