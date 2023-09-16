using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuisnessLayer;
using System.Data;

public partial class Product : System.Web.UI.Page
{
    Logic Lo = new Logic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["prdocutid"] != null)
        {
            BindGallery(Request.QueryString["prdocutid"]);
        }
    }
    protected void BindGallery(string id)
    {
        DataTable dtG = Lo.RetriveFunc(id);
        if (dtG.Rows.Count > 0)
        {
            dlgallery.DataSource = dtG;
            dlgallery.DataBind();
        }
    }
}