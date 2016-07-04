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
using System.Data.SqlClient;
using Com.Recruitment.DataBase.Connection; 
public partial class productsdetail : System.Web.UI.Page
{
    
  
   public  string stt;
    protected void Page_Load(object sender, EventArgs e)
     {
       //  DataSet ds = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().getDataSet("select *    from           products where ProdId='"dear001"'");
       //GridView1.DataSource = ds;
       //GridView1.DataBind();    
     
       
    }

    


    protected void GridView1_Load(object sender, EventArgs e)
    {
      
    }
    protected void GridView1_Init(object sender, EventArgs e)
    {
        
    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect (Session ["b"].ToString ());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        stt = Request.QueryString["url"];
        Response.Redirect(stt.ToString());

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}
