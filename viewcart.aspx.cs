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
using System.Data.SqlClient;

public partial class viewcart : System.Web.UI.Page
{
    Dictionary<string, Product> dd;
    Product p;
    protected void Page_Load(object sender, EventArgs e)
    {
        dd = (Dictionary<string, Product>)Session["pro"];
        p = dd[Request.QueryString["pid"]];
        if (!IsPostBack)
        {
            cart(p);
        }


    }
    
    public void cart(Product p)
    {
        //if (Session["dt"] == null)
        //{
            DataTable dt = new DataTable();
            DataColumn dc = new DataColumn("Id", typeof(string));
            DataColumn dc1 = new DataColumn("RatePerUnit", typeof(int));
            dt.Columns.Add(dc);
            dt.Columns.Add(dc1);
            DataRow dr = dt.NewRow();
            dr[0] = p.Id;
            dr[1] = p.Rate;
            dt.Rows.Add(dr);
        
            Session.Add("dt", dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        //}
        //else
        //{

        //    DataTable dt =(DataTable) Session["dt"];
        //    DataRow dr = dt.NewRow();
        //    dr[0] = p.Id;
        //    dr[1] = p.Rate;
        //    dt.Rows.Add(dr);
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}

        
    
    }


    protected void Button2_Click(object sender, EventArgs e)
    {  

    }
    string str;
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["url"] != null)
        {
            str = Session["url"].ToString();
        }
        Response.Redirect(str);
      
    } 
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Finalcart.aspx");
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (p != null)
        {
            int i = Convert.ToInt32(e.CommandArgument);
            TextBox t = (TextBox)GridView1.Rows[i].FindControl("TextBox1");
            try
            {
                p.Quantity = int.Parse(t.Text);
                p.Amount1 = p.Rate * p.Quantity;
            }
            catch (Exception ex)
            {
                p.Quantity = 0;
                p.Amount1 = p.Rate * p.Quantity;
            
            }
            if (Session["amt"] == null)
            {
                Session["amt"] = p.Amount1;
            }
            else
            {
                Session["amt"] = (int)Session["amt"] + p.Amount1;

            }

            ((LinkButton)e.CommandSource).Enabled = false;
            Label1.Text = "The total amount of your shopping is Rs." + Session["amt"].ToString();
        }
        
    }
    int i;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
        LinkButton l1=(LinkButton) e.Row.FindControl("LinkButton1");
      
        l1.CommandArgument = i.ToString();
        i++;        
        }
    }
}