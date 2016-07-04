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

public partial class paymentdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //lblusersessionname.Text = Session["username"].ToString();

    }
    int i;
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["total"] != null)
        {
            i = (int)Session["total"];
            if (i > 0)

            {

              Com.Recruitment.DataBase.Connection.Connection con= Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection();
             DataSet ds= con.getDataSet("select * from cartdetail where ccno=" + TextBox1.Text + " and acountno=" + TextBox2.Text + " and password='" + TextBox10.Text + "'");
               // DataSet ds = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().getDataSet("select * from cartdetail where ccno=" + TextBox1.Text + " and acountno=" + TextBox2.Text + " and password='" + TextBox10.Text + "'");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (Convert.ToInt32(ds.Tables[0].Rows[0][5]) > (int)Session["total"])
                    {
                        System.Windows.Forms.DialogResult dg = System.Windows.Forms.MessageBox.Show("you can purchase.Are you sure?");
                        if (dg == System.Windows.Forms.DialogResult.OK)
                        {
                            int k = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().ExecuteNonQuery("update cartdetail set total=total- " + i + " where ccno=" + TextBox1.Text + "");
                            DataSet ds1 = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().getDataSet("select * from cartdetail");
                            System.Windows.Forms.MessageBox.Show("your current balance is" + ds1.Tables[0].Rows[0][5].ToString());

                        }
                        else
                        {

                            System.Windows.Forms.MessageBox.Show("Sorry!you have less amount");


                        }
                    }
                }
                else
                {
                    System.Windows.Forms.MessageBox.Show("Your inormations are not corrent");
                }


            }
            else
            {
                System.Windows.Forms.MessageBox.Show("First purchase a product");

            }
        }
    }
}
