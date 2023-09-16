using BuisnessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CurrentVacancies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { BindJob(); }
    }
    protected void BindJob()
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveJob();
        if (Dt.Rows.Count > 0)
        {
            dljob.DataSource = Dt;
            dljob.DataBind();
        }
    }
}