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

public partial class forgetpasswd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     //DataSet ds=Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().getDataSet("select hint_question from userdetal");
     //for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
     //{

     //    DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString());
     
     //}
     DropDownList1.Items.Insert(0, "Select");
    }

    protected void PasswordRecovery2_VerifyingUser(object sender, LoginCancelEventArgs e)
    {
        DataSet ds = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().getDataSet("select passwd from userdetal where userid='" + PasswordRecovery2.UserName + "' and hint_question='"+DropDownList1.SelectedItem.Text+"' and answer ='"+TextBox1.Text+"'");
        
        if (ds.Tables[0].Rows.Count > 0)
        {
         
            Label1.Text="Your password is "+ ds.Tables[0].Rows[0][0].ToString();
        }
        else
        {
            Label1.Text = "Sorry your information is not correct";
        }
    }
    
}
