using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MesajOlustur : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TxtGönderen.Text = Session["OGRTNUMARA"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
        dt.MesajGonder(TxtGönderen.Text, TxtAlıcı.Text, TxtMesajBaslik.Text, Txtİçerik.Value,DateTime.Now);
        Response.Redirect("GidenMesajlar.aspx");
    }
}