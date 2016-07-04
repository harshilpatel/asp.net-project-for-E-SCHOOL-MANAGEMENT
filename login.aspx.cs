using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Com.Recruitment.DataBase.Connection;
public partial class exsiting_user : System.Web.UI.Page
{
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Connection myconn = ConnectionPool.getConnection();
        ds = myconn.getDataSet("select * from login","login"); 
    }    
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("newuser.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgetpasswd.aspx");
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        Com.Recruitment.UI.WebFactory.endSession(Session.SessionID);

        Com.Recruitment.UI.WebFactory.beginSession(Session.SessionID,Login1.UserName,Login1.Password);
        if (Com.Recruitment.UI.WebFactory.validateUser(Session.SessionID))
        {
        CheckBox ck=(CheckBox) Login1.FindControl("RememberMe");
        FormsAuthentication.RedirectFromLoginPage(Login1.UserName,ck.Checked);
        }       
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("changpasswd.aspx");
    }
    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
   
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
}
