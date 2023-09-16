using BuisnessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProject();
            BindCountry();
            BindCat(0);
        }
    }
    protected void lblsave_Click(object sender, EventArgs e)
    {
        if (txtprjectname.Text != "" && txtprojbudget.Text != "" && txtprojdesc1.Text != "" && txtprojdesc2.Text != "" && txtProjectDescription.Text != ""
            && txtprojend.Text != "" && txtprojstart.Text != "" && txtprojteam.Text != "" && txtteamname.Text != "" && ddlcategory.SelectedIndex != -1
            && ddlcountry.SelectedIndex != -1 && ddlstate.SelectedIndex != -1 && ddlsub.SelectedIndex != -1)
        {
            try
            {
                Logic Lo = new Logic();
                Lo.SaveProject(txtprjectname.Text, ddlcountry.SelectedItem.Text, ddlstate.SelectedItem.Text, ddlcategory.SelectedItem.Text, ddlsub.SelectedItem.Text,
                    txtprojteam.Text, txtteamname.Text, txtProjectDescription.Text, txtprojdesc1.Text,
                    txtprojdesc2.Text, txtprojstart.Text, txtprojend.Text, txtprojbudget.Text);
                BindProject();
                cleartext();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('" + ex.Message + "')", true);
            }
        }
        else { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Please fill all mandatory field')", true); }
    }
    protected void gvImage_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            Logic Lo = new Logic();
            Int64 del = Lo.DeleteProject(Convert.ToInt64(e.CommandArgument.ToString()));
            if (del != 0)
            { BindProject(); ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Project deleted..')", true); }
            else
            { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Project not deleted..')", true); }

        }
    }
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindState(Convert.ToInt32(ddlcountry.SelectedItem.Value));
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindSubCat();
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
    protected void BindCountry()
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveCountry();
        if (Dt.Rows.Count > 0)
        {
            ddlcountry.DataSource = Dt;
            ddlcountry.DataTextField = "CountryName";
            ddlcountry.DataValueField = "CountryId";
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, "Select");
        }
        else
        { ddlcountry.Items.Insert(0, "Select"); }
    }
    protected void BindState(int id)
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveState(id);
        if (Dt.Rows.Count > 0)
        {
            ddlstate.DataSource = Dt;
            ddlstate.DataTextField = "StateName";
            ddlstate.DataValueField = "StateId";
            ddlstate.DataBind();
            ddlstate.Items.Insert(0, "Select");
        }
        else
        { ddlstate.Items.Insert(0, "Select"); }
    }
    protected void BindSubCat()
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveSubCat(ddlcategory.SelectedItem.Value);
        if (Dt.Rows.Count > 0)
        {
            ddlsub.DataSource = Dt;
            ddlsub.DataTextField = "SubCatName";
            ddlsub.DataValueField = "SubCatId";
            ddlsub.DataBind();
            ddlsub.Items.Insert(0, "Select");
        }
        else
        { ddlsub.Items.Insert(0, "Select"); }
    }
    protected void cleartext()
    {
        txtprjectname.Text = ""; txtprojbudget.Text = ""; txtprojdesc1.Text = "";
        txtprojdesc2.Text = ""; txtProjectDescription.Text = "";
        txtprojend.Text = ""; txtprojstart.Text = ""; txtprojteam.Text = ""; txtteamname.Text = ""; ddlcategory.SelectedIndex = -1;
        ddlcountry.SelectedIndex = -1; ddlstate.SelectedIndex = -1; ddlsub.SelectedIndex = -1;

    }
    protected void BindProject()
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveProject();
        if (Dt.Rows.Count > 0)
        {
            gvImage.DataSource = Dt;
            gvImage.DataBind();
        }

    }
}