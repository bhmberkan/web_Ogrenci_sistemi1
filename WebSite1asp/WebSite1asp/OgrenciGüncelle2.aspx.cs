using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGüncelle2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)/*sessionları tekrardan aldık ve sayfanın çalışmasını sağladık güncelleme işlemini bu yüzden
                        yapmıyordu şu an yapıyor düzeldi*/
        {
            try
            {
                TxtNumara.Text = Request.QueryString["NUMARA"];

                DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();

                Textbox2.Text = dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRAD;
                Textbox3.Text = dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRSOYAD;
                Textbox4.Text = dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRFOTOGRAF;
                TxtTNumara.Text = dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRTELEFON;
                Textbox6.Text = dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRMAIL;
                Textbox7.Text = dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRSIFRE;
            }
            catch (Exception)
            {

                TxtNumara.Text = "Numarayı alamadık";
            }
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       // Page_Load(sender,e);/* numaraları falan filan fişman tekrardan çekemsını sağladık*/
        /*burda hata var */
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        dt.OgrenciSifDegis(Textbox2.Text,Textbox3.Text,Textbox4.Text, TxtTNumara.Text,Textbox6.Text,Textbox7.Text, TxtNumara.Text.ToString());
        Response.Redirect("OgrenciDefault.aspx");

       
    }

}