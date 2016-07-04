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

public partial class Recoverypasswd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {
       

    }
    protected void ChangePassword1_ChangingPassword(object sender, LoginCancelEventArgs e)
    {      
       
            int i = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().ExecuteNonQuery("update login set password='" + ChangePassword1.NewPassword+ "' where password='" + ChangePassword1.CurrentPassword + "'");
            int j = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().ExecuteNonQuery("update userdetal set passwd='" + ChangePassword1.NewPassword + "' where passwd='" + ChangePassword1.CurrentPassword + "'");
            int k = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().ExecuteNonQuery("update cartdetail set password='" + ChangePassword1.NewPassword + "' where password='" + ChangePassword1.CurrentPassword + "'");

            if (i > 0 && j>0 && k>0)
            {
                Label1.Text = "password is changed";

            }
            else
            {
                Label1.Text = "passwrd not changed";
            }
    }
    protected void ChangePasswordPushButton_Click(object sender, EventArgs e)
    {

    }
}
