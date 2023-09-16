using BuisnessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ApplicationJob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindApplication();
        }
    }
    protected void BindApplication()
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveApplication();
        if (Dt.Rows.Count > 0)
        {
            gvImage.DataSource = Dt;
            gvImage.DataBind();
        }
    }
}