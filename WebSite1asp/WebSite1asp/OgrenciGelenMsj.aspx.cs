using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGelenMsj : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        try
        {
            DataSetTableAdapters.TBL_MESAJLARTableAdapter dt = new DataSetTableAdapters.TBL_MESAJLARTableAdapter();
            Repeater1.DataSource = dt.OgrGelenn(Session["NUMARA"].ToString());
            //Repeater1.DataSource = dt.OgrencıGelen1("213");
            Repeater1.DataBind();

        }

        catch (Exception ex)
        {
            string test = ex.ToString();
        }
        }
      
            
       

    }
}