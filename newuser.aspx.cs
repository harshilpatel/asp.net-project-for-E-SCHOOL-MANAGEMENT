using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using Com.Recruitment.DataBase.Connection;
using Com.Recruitment;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    int j;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CaptchaControl1.UserValidated)
        {


                string query = "Select top 1 * from cartdetail order by ccno desc";

                string query1 = "insert into login values('" + txtUsername.Text + "','" + txtPassword.Text + "','user')";
                string query2 = "insert into userdetal values('" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtAddress.Text + "','" + txtMail.Text + "', " + txtPin.Text + ",'" + txtCity.Text + "','" + txtstate.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + txtPhonno.Text + "','" + txtSecurityqu.SelectedItem + "','" + txtAnswer.Text + "')";
                
                //Com.Recruitment.DataBase.Connection con = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection();
                Connection con = ConnectionPool.getConnection();
                DataSet ds= con.getDataSet(query);
           long accountno=Convert.ToInt64(ds.Tables[0].Rows[0][1])+1;
           long ccno = Convert.ToInt64(ds.Tables[0].Rows[0][2]) + 1;
           string query3 = "insert into cartdetail values('" + txtUsername.Text + "'," + accountno + "," + ccno + ",'" + txtPassword.Text + "','Mastero',100000)";

                int i = con.ExecuteNonQuery(query1);
                if (i > 0)
                {
                   j = con.ExecuteNonQuery(query2);
                }

                int k=con.ExecuteNonQuery(query3);
                ConnectionPool.Free(con);

                if ((i == 1) && (j == 1)&&(k==1))
                {
                     Label1.Text = "New user added successfully+<br/>";
                    Label1.Text += "Your account no is " + accountno+"<br/>";
                    Label1.Text += "Your credit card no is " + ccno;

                }
                else if (i == 0)
                {
                    Label1.Text="User already exist";
                
                }
                else
                {
                    Label1.Text = "Error occured plz try again";
                }
           

          
        }
        else
        {
            Label1.Text = "Please Enter right code";
        
        }
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
