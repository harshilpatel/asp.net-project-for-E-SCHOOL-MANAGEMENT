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

public partial class updatepro : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string username = User.Identity.Name;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
      //Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().ExecuteNonQuery("update userdetal set name='"+ TextBox8.Text +"',address='"+ TextBox4.Text +"',mailid='"+ TextBox10.Text +"',postcode="+TextBox5.Text +",state='"+TextBox7.Text +"',city='"+TextBox6.Text +"' where ");
        

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
}
