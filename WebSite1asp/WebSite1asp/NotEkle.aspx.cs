using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NotEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*dropdawn list ile birlikte dersler çekilebilir bir de var olan öğrenciler eklenebilir
        çünkü sadece var olan öğrencilere not eklemesi yapmak mantıklıdır*/
        
        //DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        //DropDownList1.DataSource = dt.OgrenciListesi();
        //DropDownList1.DataTextField = "OGRID";

        //DataSetTableAdapters.TBL_DERSLERTableAdapter dt2 = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
        //DropDownListDersID.DataSource = dt2.DersListesi();
        //DropDownListDersID.DataTextField = "DERSAD";

        /*yukarıdaki kısmı yapmaktan vazgeçtim farklı bir şekilde not ekleme işlemi yapacağım*/

    }

    protected void Button1_Click(object sender, EventArgs e)
    {/*try catch ekleyerek hatanın burada olduğunu buldum*/
       /* Tür dönüşümünde hata veriyor ancak hata olmadığını düşünüyorum */
            DataSetTableAdapters.OgrNotlarTableAdapter dt = new DataSetTableAdapters.OgrNotlarTableAdapter();
            dt.OgrNotEkle(Convert.ToInt32(TxtID.Text), Convert.ToInt32(TxtDersID.Text), Convert.ToByte(TxtS1.Text), Convert.ToByte(TxtS2.Text), Convert.ToByte(TxtS3.Text), decimal.Parse(TxtOrt.Text), bool.Parse(TxtDurum.Text));
            Response.Redirect("NotListesi.aspx");
      

    
    }
}