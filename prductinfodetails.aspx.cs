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
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Com.Recruitment.DataBase.Connection;
 
public partial class prductinfodetails : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        string s= Request.QueryString["a"];
        Connection myconn = ConnectionPool.getConnection();
        ds = myconn.getDataSet("select * from products where prodname='" + s + "'");


        lid.Text = ds.Tables[0].Rows[0][0].ToString();
        lprice.Text = ds.Tables[0].Rows[0][2].ToString() + "Rs Per Piece";
        Ldetails.Text = ds.Tables[0].Rows[0][5].ToString();
        lname.Text = ds.Tables[0].Rows[0][1].ToString();
        lcat.Text = ds.Tables[0].Rows[0]["cartid"].ToString();
        Image1.ImageUrl = ds.Tables[0].Rows[0][6].ToString();
    }
}
