using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuisnessLayer;
using System.Data;

public partial class Gallery : System.Web.UI.Page
{
    Logic Lo = new Logic();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGallery();
    }
    protected void BindGallery()
    {
        DataTable dtG = Lo.RetriveFunc();
        if (dtG.Rows.Count > 0)
        {
            dlgallery.DataSource = dtG;
            dlgallery.DataBind();
        }
    }
}