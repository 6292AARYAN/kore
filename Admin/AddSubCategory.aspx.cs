using System;
using System.Collections.Generic;
using System.Linq;
using BuisnessLayer;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddSubCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCat(0);
            BindSubCat();
        }
    }
    protected void BindCat(int id)
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveCat(id);
        if (Dt.Rows.Count > 0)
        {
            ddlcategory.DataSource = Dt;
            ddlcategory.DataTextField = "CategoryName";
            ddlcategory.DataValueField = "CategoryId";
            ddlcategory.DataBind();
            ddlcategory.Items.Insert(0, "Select");
        }
        else
        { ddlcategory.Items.Insert(0, "Select"); }
    }
    protected void BindSubCat()
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveSubCat();
        if (Dt.Rows.Count > 0)
        {
            gvImage.DataSource = Dt;
            gvImage.DataBind();
        }
    }
    protected void lblsave_Click(object sender, EventArgs e)
    {
        if (txtSubCat.Text != "" && ddlcategory.SelectedIndex != -1)
        {
            try
            {
                Logic Lo = new Logic();
                Lo.SaveSubCategory(txtSubCat.Text, Convert.ToInt32(ddlcategory.SelectedItem.Value));
                BindSubCat();
                txtSubCat.Text = "";
                ddlcategory.SelectedIndex = -1;
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
        if (e.CommandName == "del")
        {
            Logic Lo = new Logic();
            Int64 del = Lo.DeleteSubCat(Convert.ToInt64(e.CommandArgument.ToString()));
            if (del != 0)
            { BindSubCat(); ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Sub-Cateory deleted..')", true); }
            else
            { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Sub-Categoery not deleted..')", true); }

        }
    }
}