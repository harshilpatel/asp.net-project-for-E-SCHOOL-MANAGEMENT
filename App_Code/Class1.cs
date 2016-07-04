using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Product
{
    int  rate, Amount, quantity;
    string id;

    public int Quantity
    {
        get { return quantity; }
        set { quantity = value; }
    }

    public int Amount1
    {
        get { return Amount; }
        set { Amount = value; }
    }

    public int Rate
    {
        get { return rate; }
        set { rate = value; }
    }

    public string Id
    {
        get { return id; }
        set { id = value; }
    }
    string name;

    public string Name
    {
        get { return name; }
        set { name = value; }
    }
}
