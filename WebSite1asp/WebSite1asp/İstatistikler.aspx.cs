using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class İstatistikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        /* Sorgu */
        /* SELECT OGRAD +' '+ OGRSOYAD FROM TBL_NOTLAR INNER JOIN TBL_OGRENCI 
            ON 
             TBL_NOTLAR.OGRENCIID=TBL_OGRENCI.OGRID
            WHERE SINAV1=(SELECT MAX(SINAV1) FROM TBL_NOTLAR WHERE DERSNID=1)*/
        DataSetTableAdapters.DataTable1TableAdapter dt = new DataSetTableAdapters.DataTable1TableAdapter();
        Textbox1.Text = "Toplam öğenci Sayısı : " + dt.istatistik1().ToString();
        Textbox2.Text = "Toplam öğretmen Sayısı : " + dt.istatistikOGRT().ToString();
        Textbox3.Text = "Toplam Ders Sayısı : " + dt.istatistikDersler().ToString();
        Textbox4.Text = "Matematik Sınav 1 Notu En Yüksek olan öğrenci : " + dt.istatistikMatEY().ToString();
        Textbox5.Text = "Kimya Sınav 1 Notu En Yüksek Olan Öğrenci : " + dt.istatistikKimya().ToString();
        Textbox6.Text = "Dil Anlatım Sınav 1 Notu En Yüksek Olan Öğrenci : " + dt.istatistikDilAnlatım().ToString();
        Textbox7.Text = "Fizik Sınav 1 Notu En yüksek olan öğrenci :  " + dt.istatistikFizik().ToString();
        Textbox8.Text = "Biyoloji Sınav 1 Notu En yüksek olan öğrenci : " + dt.istatistikBiyoloji().ToString();
        Textbox9.Text = "İngilizce Sınav 1 Notu En yüksek olan öğrenci : " +dt.istatistikingilizce().ToString();
        Textbox10.Text = "Bilgisayar Sınav 1 Notu En yüksek olan öğrenci : " + dt.istatistikBilgisayar().ToString();
        Textbox11.Text = "Difresniyel Sınav 1 Notu En yüksek olan öğrenci : " + dt.istatistikDif().ToString();
        Textbox12.Text = "Matematik sınav 1  Ortalaması : " + dt.istatistikMatOrt().ToString();
        Textbox13.Text = "Fizik  Sınav 1 Ortlaması : " + dt.istatistikFizikOrt().ToString();
        Textbox14.Text = "Diferansiyel sınav 1  Ortalaması : " + dt.istatistikDifOrt().ToString();
    }
}