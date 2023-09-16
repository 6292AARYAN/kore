using BuisnessLayer;
using System;
using System.Data;
using System.IO;
using System.Web;
using System.Web.UI;

public partial class Admin_AddImages : System.Web.UI.Page
{
    Logic Lo = new Logic();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGallery();
        }
    }
    protected void BindGallery()
    {
        DataTable dtG = Lo.RetriveFunc();
        if (dtG.Rows.Count > 0)
        {
            gvImage.DataSource = dtG;
            gvImage.DataBind();
        }
    }
    protected void lblsave_Click(object sender, EventArgs e)
    {
        if (fuImage.HasFile != false)
        {
            string Save = Lo.SaveGallery(imagedb());
            if (Save != "false")
            {
                BindGallery();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Gallery Image Saved.')", true);
            }
            else
            { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Oops some error occured..')", true); }
        }
        else { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Select file.')", true); }
    }
    #region Image Code
    private int ImageMaxCount;
    protected DataTable imagedb()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn("ImagePath", typeof(string)));
        DataRow dr;
        {
            try
            {
                if (ImageMaxCount <= 4)
                {
                    foreach (HttpPostedFile postfiles in fuImage.PostedFiles)
                    {
                        string FileType = Path.GetExtension(postfiles.FileName);
                        int FileSize = postfiles.ContentLength;
                        if (GetImageFilter(postfiles.FileName) != false)
                        {
                            string FilePathName = DateTime.Now.ToString("hh_mm_ss") + postfiles.FileName;
                            postfiles.SaveAs(HttpContext.Current.Server.MapPath("/GalleryImage") + "\\" + FilePathName);
                            dr = dt.NewRow();
                            dr["ImagePath"] = "GalleryImage/" + FilePathName;
                            dt.Rows.Add(dr);
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "ErrorMssgPopup('Invalid file format " + postfiles.FileName + "')", true);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return dt;
        }
    }
    #endregion
    protected void gvImage_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            Int64 del = Lo.DeleteImage(Convert.ToInt64(e.CommandArgument.ToString()));
            if (del != 0)
            { BindGallery(); ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Iamge deleted..')", true); }
            else
            { ScriptManager.RegisterStartupScript(Page, Page.GetType(), "alert", "alert('Image not deleted..')", true); }
        }
    }
    public bool GetImageFilter(string fileName)
    {
        if (fileName == "")
            return false;
        string fileType = fileName.Substring(fileName.LastIndexOf("."), fileName.Length - fileName.LastIndexOf("."));
        if (fileType.ToUpper() == ".JPEG" || fileType.ToUpper() == ".JPG" || fileType.ToUpper() == ".PNG")
            return true;
        else
            return false;
    }
}