using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuisnessLayer;
using System.Data;

public partial class Admin_AddJob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindJob();
            BindCountry();
        }
    }
    protected void BindJob()
    {
        Logic Lo = new Logic();
        DataTable Dt = Lo.RetriveJob();
        if (Dt.Rows.Count > 0)
        {
            gvImage.DataSource = Dt;
            gvImage.DataBind();
        }
    }
    protected void lblsave_Click(object sender, EventArgs e)
    {
        if (txtexp.Text != "" && txtjobdescription.Text != "" && txtjobname.Text != "" && txtkeyskill.Text != "" && txtsalery.Text != "" && txttitle.Text != "")
        {
            try
            {
                Logic Lo = new Logic();
                Lo.SaveJob(txttitle.Text, txtjobname.Text, txtjobdescription.Text, txtkeyskill.Text, txtexp.Text, txtsalery.Text, ddlcountry.SelectedItem.Text, ddlstate.SelectedItem.Text);
                BindJob();
                txttitle.Text = ""; txtjobname.Text = ""; txtjobdescription.Text = ""; txtkeyskill.Text = ""; txtexp.Text = ""; txtsalery.Text = ""; ddlcountry.SelectedIndex = -1; ddlstate.SelectedIndex = -1;
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Successfully Added.')", true);
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
            Int64 del = Lo.DeleteJob(Convert.ToInt64(e.CommandArgument.ToString()));
            if (del != 0)
            { BindJob(); ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Job deleted..')", true); }
            else
            { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Job not deleted..')", true); }

        }
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
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(ddlcountry.SelectedIndex!=-1)
        BindState(Convert.ToInt32(ddlcountry.SelectedItem.Value));
    }
}