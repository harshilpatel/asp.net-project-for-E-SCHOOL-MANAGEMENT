<%@ Application Language="C#" %>
<%@ Import Namespace="System.Collections.Generic" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        //Application["accountno"] = 5555;
        //Application["ccno"] = 1111111111111114;
        Dictionary<string, Product> d = new Dictionary<string, Product>();
        Com.Recruitment.UI.WebFactory.CreateInstance().LoadApplication();
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        Dictionary<string, Product> dc = new Dictionary<string, Product>();
        Session.Add("Pro", dc);

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
