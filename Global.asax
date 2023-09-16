<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Net" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        System.Net.ServicePointManager.SecurityProtocol |= SecurityProtocolType.Tls;
        RegisterRoutes(RouteTable.Routes);
    }
    protected void Application_BeginRequest(object sender, EventArgs e)
    {
    }
    void Application_Error(object sender, EventArgs e)
    {

    }
    void Session_Start(object sender, EventArgs e)
    {
        Session.Timeout = 20;
    }
    void Session_Remove(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
    }
    static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("Home", "Home", "~/Default.aspx", true);
        routes.MapPageRoute("Login", "Login", "~/Admin/Login.aspx", true);
        routes.MapPageRoute("AddImages", "AddImages", "~/Admin/AddImages.aspx", true);
        routes.MapPageRoute("AddCategory", "AddCategory", "~/Admin/AddCategory.aspx", true);
        routes.MapPageRoute("AddSubCategory", "AddSubCategory", "~/Admin/AddSubCategory.aspx", true);
        routes.MapPageRoute("AddJob", "AddJob", "~/Admin/AddJob.aspx", true);
        routes.MapPageRoute("AddProject", "AddProject", "~/Admin/AddProject.aspx", true);
        routes.MapPageRoute("ApplicationJob", "ApplicationJob", "~/Admin/ApplicationJob.aspx", true);
        routes.MapPageRoute("gallery.aspx", "gallery.aspx", "~/Gallery.aspx", true);
        routes.MapPageRoute("Application.aspx", "Application.aspx", "~/JobApplication.aspx", true);
        routes.MapPageRoute("CurrentVacancies", "CurrentVacancies", "~/CurrentVacancies.aspx", true);
        routes.MapPageRoute("Clinets", "Clinets", "~/Clients.aspx", true);
    }
</script>
