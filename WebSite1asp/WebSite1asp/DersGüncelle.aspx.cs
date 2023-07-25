using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersGüncelle : System.Web.UI.Page
{
    int id; 
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack==false)
        {
            id = Convert.ToInt32(Request.QueryString["DERSID"]);
            DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
            TxtDersID.Text = id.ToString();
            TxtDersAd.Text = dt.DersGetir(id)[0].DERSAD;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
            dt.DersGüncelle(TxtDersAd.Text,Convert.ToInt32(TxtDersID.Text));
            Response.Redirect("DersListesi.aspx");
        }
        catch (Exception )
        {
           // Response.Write("hata burada");  // bu gider sayfanın en üstüne yazar
            Response.Write("<script lang='JavaScript'>alert('hata burada');</script>"); // bu ise beyaz sayfada yukarıdan getirir

        }
        
    }
}