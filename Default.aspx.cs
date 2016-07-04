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
using System.Collections.Generic;
using Com.Recruitment.DataBase.Connection;

public partial class _Default : System.Web.UI.Page
{
    DataSet ds;
    Dictionary<string, Product> dc;
    protected void Page_Load(object sender, EventArgs e)
    {
              
        bind();
    }
    public void bind()
    {
        string catid=Request.QueryString["item"];
        ds = Com.Recruitment.DataBase.Connection.ConnectionPool.getConnection().getDataSet("select * from products where cartid='"+catid+"'");
        DataList1.DataSource = ds;
        DataList1.DataBind();


    }
    public void myproductinfo(string produrl)
    {














    }

    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        //if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        //{
        //    Image i1 = (Image)e.Item.Controls[1].Controls[0];
        //   // HyperLink hk = (HyperLink)e.Item.Controls[1];
        //   // hk.NavigateUrl ="trousers.aspx?url=" + i1.ImageUrl;

        //}
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Product obj = new Product();

        obj.Id = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("l1")).Text;

        obj.Rate = int.Parse(((Label)DataList1.Items[e.Item.ItemIndex].FindControl("l2")).Text);

        dc = (Dictionary<string, Product>)Session["Pro"];
        if (!dc.ContainsKey(obj.Id.ToString()))
            dc.Add(obj.Id.ToString(), obj);
        Session["url"] = Request.RawUrl;

        Response.Redirect("viewcart.aspx?pid=" + obj.Id);

    }
    protected void TreeView2_SelectedNodeChanged(object sender, EventArgs e)
    {

    }
}

