using BuisnessLayer;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobApplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { }
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        SaveCode();
    }
    protected void cleartext()
    {
        txt10board.Text = "";
        txt10school.Text = "";
        txt12board.Text = "";
        txt12school.Text = "";
        txtachievetrain.Text = "";
        txtbranch.Text = "";
        txtbranchother.Text = "";
        txtcandidature.Text = "";
        txtCompany.Text = "";
        txtCompany1.Text = "";
        txtdegree.Text = "";
        txtdegreeother.Text = "";
        txtdob.Text = "";
        txtEducational.Text = "";
        txtEducational1.Text = "";
        txtemail.Text = "";
        txtgivedetailseducation.Text = "";
        txtheight.Text = "";
        txtinstitute.Text = "";
        txtinstituteother.Text = "";
        txtmarks.Text = "";
        txtmarks10.Text = "";
        txtmarks12.Text = "";
        txtmarksother.Text = "";
        txtmedical.Text = "";
        txtname.Text = "";
        txtOccupation.Text = "";
        txtOccupation1.Text = "";
        txtofpassing.Text = "";
        txtofpassingother.Text = "";
        txtPermanentAddress.Text = "";
        txtphoneother.Text = "";
        txtPresentAddress.Text = "";
        txtsate10.Text = "";
        txtstate.Text = "";
        txtstate12.Text = "";
        txtstateother.Text = "";
        txttelephone.Text = "";
        txtuniversity.Text = "";
        txtuniversityother.Text = "";
        txtweight.Text = "";
        txtyrofadmision.Text = "";
        txtyrofadmisionother.Text = "";
        txtyrpass10.Text = "";
        txtyrpass12.Text = "";
        ddldrive.SelectedIndex = -1;
        ddlmaritalstatus.SelectedIndex = -1;
        ddlpersonalconveyance.SelectedIndex = -1;
        ddlresident.SelectedIndex = -1;
        ddlsex.SelectedIndex = -1;
        ddlstate.Text = "";
        rbability.SelectedIndex = -1;
        rbwritten.SelectedIndex = -1;
    }
    protected void SaveCode()
    {
        if (txtname.Text != "" && txtPermanentAddress.Text != "" && txttelephone.Text != "" && txtemail.Text != "")
        {
            try
            {
                Logic Lo = new Logic();
                Lo.SaveApplication(txtname.Text, ddlsex.SelectedItem.Text, txtdob.Text, ddlmaritalstatus.SelectedItem.Text, txtheight.Text,
                    txtweight.Text, txtmedical.Text, txtPermanentAddress.Text, txtPresentAddress.Text, ddlresident.SelectedItem.Text,
                    ddlstate.Text, txttelephone.Text, txtphoneother.Text, txtemail.Text, txtyrpass10.Text, txt10school.Text,
                    txt10board.Text, txtsate10.Text, txtmarks10.Text, txtyrpass12.Text, txt12school.Text, txt12board.Text, txtstate12.Text,
                    txtmarks12.Text, txtyrofadmision.Text, txtofpassing.Text, txtbranch.Text, txtmarks.Text, txtdegree.Text, txtuniversity.Text,
                    txtinstitute.Text, txtstate.Text, txtyrofadmisionother.Text, txtofpassingother.Text, txtbranchother.Text, txtmarksother.Text,
                    txtdegreeother.Text, txtuniversityother.Text, txtinstituteother.Text, txtstateother.Text, txtgivedetailseducation.Text,
                    txtEducational.Text, txtOccupation.Text, txtCompany.Text, txtEducational1.Text, txtOccupation1.Text, txtCompany1.Text,
                    rbability.SelectedItem.Text, rbwritten.SelectedItem.Text, ddldrive.SelectedItem.Text,
                    ddlpersonalconveyance.SelectedItem.Text, txtachievetrain.Text, txtcandidature.Text);
                sendmail();
                cleartext();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Successfully Added.')", true);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('" + ex.Message + "')", true);
            }
        }
        else { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Please fill all mandatory field')", true); }
    }
    protected void sendmail()
    {
        try
        {
            string body;
            using (StreamReader reader = new StreamReader(Server.MapPath("~/Email/Enq.html")))
            {
                body = reader.ReadToEnd();
            }
            body = body.Replace("{Name}", txtname.Text);
            body = body.Replace("{Email}", txtemail.Text);
            body = body.Replace("{Mobile}", txttelephone.Text);
            body = body.Replace("{address}", txtPermanentAddress.Text);
            body = body.Replace("{state}", txtstate.Text);
            SendMail s;
            s = new SendMail();
            s.CreateMail(txtemail.Text, "info@koreautomation.com", "Job Application Mail", body);
            s.sendMail();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('" + ex.Message + "')", true);
        }
    }
}
