using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruGüncelle : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(Page.IsPostBack==false)
        {
            id = Convert.ToInt32(Request.QueryString["DUYURUID"]);
            DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
            dt.DuyuruSec(id);
            TxtDuyuruID.Text = id.ToString();
            TxtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DUYURUBASLIK;
            TextArea1.Value = dt.DuyuruSec(id)[0].DUYURUICERIK;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DUYURULARTableAdapter dt = new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
        dt.DuyuruGuncelle(TxtDuyuruBaslik.Text,TextArea1.Value, Convert.ToInt32(TxtDuyuruID.Text));
        Response.Redirect("DuyuruListesi.aspx");

    }
}