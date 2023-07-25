using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DUYURULARTableAdapter dt=new DataSetTableAdapters.TBL_DUYURULARTableAdapter();
        Repeater1.DataSource = dt.DuyuruListesi();
        Repeater1.DataBind();

    }
}