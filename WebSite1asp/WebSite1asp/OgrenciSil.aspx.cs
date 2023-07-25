using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        dt.OgrenciSİl(id);
        Response.Redirect("Default.aspx");
        /* silme işlemini sadece bir biri ile ilişkisi olmayanlar arası çalıştırabılıyoruz yoksa hata verıyor */ 
        /* ilişkili tablolar kullanmamız buna sebep açıyor */
    }
}