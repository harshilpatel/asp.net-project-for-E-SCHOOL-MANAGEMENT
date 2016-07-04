using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        Dictionary<string, Product> dd = (Dictionary<string, Product>)Session["pro"];

        DataTable dt = new DataTable();
        DataColumn dc1 = new DataColumn("Id", typeof(string));
        DataColumn dc2 = new DataColumn("RatePerunit", typeof(int));
        DataColumn dc3 = new DataColumn("Amount", typeof(int));
        dt.Columns.Add(dc1);
        dt.Columns.Add(dc2);
        dt.Columns.Add(dc3);
        foreach (Product pp in dd.Values)
        {
            Product p = pp;
            DataRow dr = dt.NewRow();
            dr[0] = p.Id.ToString();
            dr[1] = p.Rate.ToString();
            dr[2] = p.Amount1.ToString();
            dt.Rows.Add(dr);

        }
        GridView1.DataSource = dt;
        GridView1.DataBind();


    }
    public void bind()
    {
        Dictionary<string, Product> dd = (Dictionary<string, Product>)Session["pro"];

        DataTable dt = new DataTable();
        DataColumn dc1 = new DataColumn("Id", typeof(string));
        DataColumn dc2 = new DataColumn("RatePerunit", typeof(int));
        DataColumn dc3 = new DataColumn("Amount", typeof(int));
        dt.Columns.Add(dc1);
        dt.Columns.Add(dc2);
        dt.Columns.Add(dc3);
        foreach (Product pp in dd.Values)
        {
            Product p = pp;
            DataRow dr = dt.NewRow();
            dr[0] = p.Id.ToString();
            dr[1] = p.Rate.ToString();
            dr[2] = p.Amount1.ToString();
            dt.Rows.Add(dr);

        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string orderid="order"+User.Identity.Name+DateTime.Now.ToShortTimeString();
        int i=  Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().ExecuteNonQuery("Insert into [order](orderno,userid)values('" + orderid + "','" + User.Identity.Name + "')");
        Dictionary<string, Product> prodt = (Dictionary<string, Product>)Session["pro"];
        foreach (Product p in prodt.Values)
        {
            if (p.Quantity > 0)
            {
                Com.Recruitment.DataBase.Connection.Connection con = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection();
                int j = con.ExecuteNonQuery("Insert into [orderdetails] values('" + p.Id + "','" + p.Quantity + "','" + orderid + "')");
            }
        
        }

        
        
        
        
        
        
        Response.Redirect("Paymentdetail.aspx");

    }
    int i;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        { 
        
        i=i+int.Parse(e.Row.Cells[3].Text);
        
        }
        l1.Text = "The total amount of purchasing is" + i.ToString();
        Session["total"] = i;
    }
    int ii;
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string str = GridView1.Rows[e.RowIndex].Cells[1].Text;
        Dictionary<string, Product> dd = (Dictionary<string, Product>)Session["pro"];
        dd.Remove(str);
        Session.Add("pro", dd);
        bind();
        foreach (GridViewRow gr in GridView1.Rows)
        {
          ii=ii+ int.Parse(gr.Cells[3].Text);
        
        }
        l1.Text = "The total amount of purchasing is" + ii.ToString();

       
    }      
}
