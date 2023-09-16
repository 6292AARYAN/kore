using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuisnessLayer;
using System.Data;

public partial class Admin_Login : System.Web.UI.Page
{
    Logic Lo = new Logic();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlog_Click(object sender, EventArgs e)
    {
        if (uname.Text != "" && psw.Text != "")
        {
            DataTable DtLog = Lo.RetriveUser(uname.Text.Trim(), psw.Text.Trim());
            if (DtLog.Rows.Count > 0)
            {
                Session["User"] = uname.Text.Trim();
                Response.Redirect("AddImages");
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Invalid login details.')", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Fill mandatory.')", true);
        }
    }
}