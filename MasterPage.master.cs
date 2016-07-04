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
using Com.Recruitment.UI;
using Com.Recruitment.DataBase.Connection;

public partial class MasterPage : System.Web.UI.MasterPage
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //Panel2.Visible = true;
        //TreeView1.Visible = true;
        if (WebFactory.validateUser(Session.SessionID))
        {
//TextBox1.Visible = false;
        //    TextBox2.Visible = false;
          //  Button3.Visible = false;
          //  Label1.Visible = false;
          //  Label2.Visible = false;

           
        }
        else
        {
           
            //TextBox1.Visible = true;
            //    TextBox2.Visible = true;
            //Button3.Visible = true;
            //Label1.Visible = true;
            //Label2.Visible = true;
        }
    }
    protected void TreeView2_SelectedNodeChanged(object sender, EventArgs e)
    {
        if(TreeView2.SelectedNode.Text =="Garments")
            Response.Redirect("garments.aspx");
       else if (TreeView2.SelectedNode.Text == "Mens Wear")
            Response.Redirect("menswear.aspx");
        else if (TreeView2.SelectedNode.Text == "Jewellery")
            Response.Redirect("jewellery.aspx");
        else if (TreeView2.SelectedNode.Text == "Shirts")
            Response.Redirect("shirt.aspx");
        else if (TreeView2.SelectedNode.Text == "T-Shirts")
            Response.Redirect("t_shirt.aspx");
        else if (TreeView2.SelectedNode.Text == "Socks")
            Response.Redirect("socks.aspx");
        else if (TreeView2.SelectedNode.Text == "Trousers")
            Response.Redirect("trousers.aspx");
        else if (TreeView2.SelectedNode.Text == "Tie")
            Response.Redirect("tie.aspx");
        else if (TreeView2.SelectedNode.Text == "Marrige-Wear")
            Response.Redirect("marrige.aspx");
        else if (TreeView2.SelectedNode.Text == "Kurta")
            Response.Redirect("kurta.aspx");
        else if (TreeView2.SelectedNode.Text == "Hanki")
            Response.Redirect("hanki.aspx");
        else if (TreeView2.SelectedNode.Text == "Jewellery")
            Response.Redirect("belts.aspx");
        else if (TreeView2.SelectedNode.Text == "Jeans")
            Response.Redirect("jeans.aspx");
        else if (TreeView2.SelectedNode.Text == "Tie")
            Response.Redirect("tie.aspx");
        else if (TreeView2.SelectedNode.Text == "Kids Shirts")
            Response.Redirect("kidsshirt.aspx");
        else if (TreeView2.SelectedNode.Text == "Kids T-Shirts")
            Response.Redirect("kidstshirt.aspx");
        else if (TreeView2.SelectedNode.Text == "Kids Suits")
            Response.Redirect("kidssuit.aspx");
        else if (TreeView2.SelectedNode.Text == "Ramphers")
            Response.Redirect("kidsrampher.aspx");
        else if (TreeView2.SelectedNode.Text == "Froks")
            Response.Redirect("kidsfork.aspx");
        else if (TreeView2.SelectedNode.Text == "Kids Skirts")
            Response.Redirect("kidsskirt.aspx");
        else if (TreeView2.SelectedNode.Text == "Nikar")
            Response.Redirect("kidsnikar.aspx");
        else if (TreeView2.SelectedNode.Text == "Kids Jeans")
            Response.Redirect("kidsjeans.aspx");
        else if (TreeView2.SelectedNode.Text == "Platinum")
            Response.Redirect("platinum.aspx");
        else if (TreeView2.SelectedNode.Text == "Diamond")
            Response.Redirect("diamond.aspx");
        else if (TreeView2.SelectedNode.Text == "Gold")
            Response.Redirect("gold.aspx");
        else if (TreeView2.SelectedNode.Text == "Ladies Wear")
            Response.Redirect("ladieswear.aspx");
        else if (TreeView2.SelectedNode.Text == "Saree")
            Response.Redirect("saree.aspx");
        else if (TreeView2.SelectedNode.Text == "Miniskirt")
            Response.Redirect("ladiesminiskirt.aspx");
        else if (TreeView2.SelectedNode.Text == "Ladies Jeans")
            Response.Redirect("ladiesjeans.aspx");
        else if (TreeView2.SelectedNode.Text == "NightWear")
            Response.Redirect("ladiesnightwear.aspx");
        else if (TreeView2.SelectedNode.Text == "Salwar Suit")
            Response.Redirect("ladiessuit.aspx");
        else if (TreeView2.SelectedNode.Text == "Ladies Skirt")
            Response.Redirect("ladiesskirt.aspx");
        else if (TreeView2.SelectedNode.Text == "Ladies Tops")
            Response.Redirect("ladiestop.aspx");
        else if (TreeView2.SelectedNode.Text == "Ladies Kurta")
            Response.Redirect("ladieskurta.aspx");
        else if (TreeView2.SelectedNode.Text == "Shirts")
            Response.Redirect("ladiesshirt.aspx");
        else if (TreeView2.SelectedNode.Text == "Indo-Western")
            Response.Redirect("ladiesindo_western.aspx");
        else if (TreeView2.SelectedNode.Text == "Sleveless Shirt")
            Response.Redirect("laddiesslevesless.aspx");
        else if (TreeView2.SelectedNode.Text == "Western Wear")
            Response.Redirect("ladieswestern.aspx");
        else if (TreeView2.SelectedNode.Text == "Marrige Gaoun")
            Response.Redirect("ladiesgaoun.aspx");
        else if (TreeView2.SelectedNode.Text == "Designer Dress")
            Response.Redirect("desinerdress.aspx");
        else if (TreeView2.SelectedNode.Text == "Sleveless Tops")
            Response.Redirect("ladiesslevesless.aspx");
        else if (TreeView2.SelectedNode.Text == "Full Sleves Top")
            Response.Redirect("ladiesfulltops.aspx");


        else if (TreeView2.SelectedNode.Text == "Platinum Rings")
            Response.Redirect("platinumring.aspx");
        else if (TreeView2.SelectedNode.Text == "Platinum Earings")
            Response.Redirect("platinumear.aspx");
        else if (TreeView2.SelectedNode.Text == "Platinum Necklace")
            Response.Redirect("platinumnecklace.aspx");
        else if (TreeView2.SelectedNode.Text == "Diamond Earings")
            Response.Redirect("diamondear.aspx");
        else if (TreeView2.SelectedNode.Text == "Diamond Rings")
            Response.Redirect("diamondring.aspx");
        else if (TreeView2.SelectedNode.Text == "Diamond Pendents")
            Response.Redirect("diamondpendent.aspx");
        else if (TreeView2.SelectedNode.Text == "Diamond Necklace")
            Response.Redirect("diamondnecklace.aspx");
        else if (TreeView2.SelectedNode.Text == "Gold Necklaces")
            Response.Redirect("goldset.aspx");
        else if (TreeView2.SelectedNode.Text == "Gold Earings")
            Response.Redirect("goldear.aspx");
        else if (TreeView2.SelectedNode.Text == "Gold Rings")
            Response.Redirect("goldring.aspx");
        else if (TreeView2.SelectedNode.Text == "Gold Pendents")
            Response.Redirect("goldpendent.aspx");
        else if (TreeView2.SelectedNode.Text == "Kids Wear")
            Response.Redirect("kidswear.aspx");
        
       
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedItem.Text == "Home")
            Response.Redirect("home.aspx");
        else if (Menu1.SelectedItem.Text == "LogIn")
            Response.Redirect("exsiting user.aspx");
        else if (Menu1.SelectedItem.Text == "Jewellery")
            Response.Redirect("Jewellery.aspx");
        else if (Menu1.SelectedItem.Text == "Garments")
            Response.Redirect("garments.aspx");
        else if (Menu1.SelectedItem.Text == "About Us")
            Response.Redirect("aboutus.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("garments.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Jewellery.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    { }


    public static  void myproductinfo(string productid)
    {
   
    }

    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {
        Com.Recruitment.UI.WebFactory.endSession(Session.SessionID);
        FormsAuthentication.SignOut();
        Session.Abandon();
        FormsAuthentication.RedirectToLoginPage();
       

    }
    
}
