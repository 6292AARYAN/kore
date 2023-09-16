using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact_us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtcompanyName.Text != "" && txtemail.Text != "" && txtmessage.Text != "")
            {
                SendEmailCode();
                txtcompanyName.Text = "";
                txtcontactPerson.Text = "";
                txtemail.Text = "";
                txtmessage.Text = "";
                txtphone.Text = "";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Successfully send enquiry to responder.We will evert you soon.')", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Fill all field mandatory')", true);
            }
        }
        catch (Exception ex)
        { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('" + ex.Message + "')", true); }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        txtcompanyName.Text = "";
        txtcontactPerson.Text = "";
        txtemail.Text = "";
        txtmessage.Text = "";
        txtphone.Text = "";
    }
    public void SendEmailCode()
    {
        try
        {
            string body;
            using (StreamReader reader = new StreamReader(Server.MapPath("~/Email/Enq.html")))
            {
                body = reader.ReadToEnd();
            }
            body = body.Replace("{Name}", txtcontactPerson.Text);
            body = body.Replace("{Email}", txtemail.Text);
            body = body.Replace("{Mobile}", txtphone.Text);
            body = body.Replace("{Message}", txtmessage.Text);
            body = body.Replace("{Company}", txtcompanyName.Text);
            SendMail s;
            s = new SendMail();
            s.CreateMail(txtemail.Text, "info@koreautomation.com", "Enquiry  Mail", body);
            s.sendMail();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('" + ex.Message + "')", true);
        }

    }
}