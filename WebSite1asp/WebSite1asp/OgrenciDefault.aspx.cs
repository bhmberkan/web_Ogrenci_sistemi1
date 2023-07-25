using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Textbox1.Text = Session["NUMARA"].ToString();

        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        Textbox2.Text = dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRAD;
        Textbox3.Text = dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSOYAD;
        Textbox4.Text = dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRFOTOGRAF;
        Textbox5.Text = dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRTELEFON;
        Textbox6.Text = dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRMAIL;
        Textbox7.Text = dt.OgrenciPaneliGetir(Textbox1.Text)[0].OGRSIFRE;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgrenciGüncelle2.aspx?NUMARA="+Textbox1.Text);
    }
}