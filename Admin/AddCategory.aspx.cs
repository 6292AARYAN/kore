using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using BuisnessLayer;
using System.Data;
using System.Web.UI.WebControls;

public partial class Admin_AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCat(0);
        }
    }
    protected void BindCat(int id)
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveCat(id);
        if (Dt.Rows.Count > 0)
        {
            gvImage.DataSource = Dt;
            gvImage.DataBind();
        }
    }
    protected void lblsave_Click(object sender, EventArgs e)
    {
        if (txtcategory.Text != "")
        {
            try
            {
                Logic Lo = new Logic();
                Lo.SaveCategory(txtcategory.Text);
                BindCat(0);
                txtcategory.Text = "";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Successfully Added.')", true);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('" + ex.Message + "')", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Please fill all mandatory field')", true);
        }
    }
    protected void gvImage_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="del")
        {
            Logic Lo = new Logic();
            Int64 del = Lo.DeleteCat(Convert.ToInt64(e.CommandArgument.ToString()));
            if (del != 0)
            { BindCat(0); ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Cateory deleted..')", true); }
            else
            { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Categoery not deleted..')", true); }

        }
    }
}