<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 1000px;
            float: left;
            height: 491px;
            background-color: #e2d787;
        }
        .style2
        {
            height: 311px;
        }
        .style3
        {
            width: 100%;
            height:100%;
            float: left;
            background-color: #e2d787;
        }
        .style4
        {
            height: 311px;
            width: 200px;
        }
        .style5
        {
            width: 100%;
            background-color: #e2d787;
        }
    </style>
</head>
<body style="background-image:url('Images/bg-html.gif');background-repeat:repeat;  margin-bottom:0;margin-left:0;margin-top:0;margin-right:0" >
    <form id="form1" runat="server">
    <div>
    
        <table align="left" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td colspan="2" height="100px">
                    <table align="left" cellpadding="0" class="style3">
                        <tr>
                            <td colspan=2>
                                <img src="images/logo.jpg" height=100px width=100% />
                            </td>                            
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style4" align="center" height="800" valign="top">
                    <table align="center" cellpadding="0" cellspacing="0" class="style5">
                        <tr>
                            <td valign="top" align=left>
                        <asp:TreeView ID="TreeView2" runat="server" BackColor="#FF8000" ForeColor="Maroon"
                            ImageSet="BulletedList3" OnSelectedNodeChanged="TreeView2_SelectedNodeChanged" meta:resourcekey="TreeView2Resource1" BorderColor="BlueViolet" Font-Bold="False" Font-Underline="True" Height="340px" Width="138px">
                            <ParentNodeStyle Font-Bold="True" Font-Italic="True" />
                            <HoverNodeStyle Font-Underline="True" ForeColor="Maroon" />
                            <SelectedNodeStyle Font-Underline="True" ForeColor="Maroon" HorizontalPadding="0px"
                                VerticalPadding="0px" BackColor="White" BorderColor="Transparent" BorderStyle="Solid" Font-Bold="True" Font-Italic="True" />
                            <Nodes>
                                <asp:TreeNode Expanded="True" Text="Garments" ToolTip="Cloths and Cloths YOU want...."
                                    Value="Garments" meta:resourcekey="TreeNodeResource1">
                                    <asp:TreeNode Text="Ladies Wear" Value="Ladies Wear" meta:resourcekey="TreeNodeResource2">
                                        <asp:TreeNode Text="Saree" Value="Saree" meta:resourcekey="TreeNodeResource3" 
                                            NavigateUrl="Default.aspx?item=lsaree"  ></asp:TreeNode>
                                        <asp:TreeNode Text="Miniskirt" Value="Marriage Wear" 
                                            NavigateUrl="Default.aspx?item=lskirt"></asp:TreeNode>
                                        <asp:TreeNode Text="NightWear" Value="Ladies NightWear" 
                                            NavigateUrl="Default.aspx?item=lnight"></asp:TreeNode>
                                        <asp:TreeNode Text="Ladies Suit" Value="Suit" 
                                            meta:resourcekey="TreeNodeResource4" NavigateUrl="Default.aspx?item=lsuit" ></asp:TreeNode>
                                        <asp:TreeNode Text="Ladies Skirt" Value="Skirt" 
                                            meta:resourcekey="TreeNodeResource8" NavigateUrl="default.aspx?item=lskirt"></asp:TreeNode>
                                        <asp:TreeNode Text="Ladies Tops" Value="Tops" 
                                            meta:resourcekey="TreeNodeResource7" NavigateUrl="default.aspx?item=ltops"></asp:TreeNode>
                                        <asp:TreeNode Text="Ladies Kurta" Value="Ladies Kurta" 
                                            NavigateUrl="default.aspx?item=lkurta"></asp:TreeNode>
                                        <asp:TreeNode Text=" Ladies Shirts" Value="Shirts" 
                                            meta:resourcekey="TreeNodeResource6" NavigateUrl="default.aspx?item=lshirt"></asp:TreeNode>
                                        <asp:TreeNode Text="Ladies Jeans" Value="Jeans" 
                                            meta:resourcekey="TreeNodeResource5" NavigateUrl="default.aspx?item=ljeans"></asp:TreeNode>
                                        <asp:TreeNode Text="Indo-Western" Value="New Node" 
                                            NavigateUrl="default.aspx?item=lindo"></asp:TreeNode>
                                        <asp:TreeNode Text="Sleveless Shirt" Value="Ladies Sleveless Shirt" 
                                            NavigateUrl="default.aspx?item=lslvshirt"></asp:TreeNode>
                                        <asp:TreeNode Text=" Western Wear" Value="ladies Western Wear" 
                                            NavigateUrl="default.aspx?item=lwest"></asp:TreeNode>
                                        <asp:TreeNode Text=" Marrige Gaoun" Value="New Node" 
                                            NavigateUrl="default.aspx?item=lgaoun"></asp:TreeNode>
                                        <asp:TreeNode Text="Designer Dress" Value="Designer Dresses" 
                                            NavigateUrl="default.aspx?item=ldesin"></asp:TreeNode>
                                        <asp:TreeNode Text=" Sleveless Tops" Value="Party-Wear" 
                                            NavigateUrl="default.aspx?item=lslvles"></asp:TreeNode>
                                        <asp:TreeNode Text=" Full Sleves Top" Value="ladies Full Sleves Top" 
                                            NavigateUrl="default.aspx?item=lfultop"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="Mens Wear" Value="Mens Wear" meta:resourcekey="TreeNodeResource9">
                                        <asp:TreeNode Text="Tie" Value="Tie" NavigateUrl="default.aspx?item=mtie"></asp:TreeNode>
                                        <asp:TreeNode Text="Kurta" Value="Kurta" NavigateUrl="default.aspx?item=mkurta"></asp:TreeNode>
                                        <asp:TreeNode Text="Shirts" Value="Shirts" 
                                            NavigateUrl="default.aspx?item=mshirt"></asp:TreeNode>
                                        <asp:TreeNode Text="Socks" Value="Socks" NavigateUrl="default.aspx?item=msock"></asp:TreeNode>
                                        <asp:TreeNode Text="Jeans" Value="Jeans" NavigateUrl="default.aspx?item=mjean">
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="Hanki" Value="Hanki" NavigateUrl="default.aspx?item=mhanki"></asp:TreeNode>
                                        <asp:TreeNode Text="T-Shirts" Value="T-Shirts" 
                                            NavigateUrl="default.aspx?item=mtshirt"></asp:TreeNode>
                                        <asp:TreeNode Text="Trousers" Value="Trousers" 
                                            NavigateUrl="default.aspx?item=mtrou"></asp:TreeNode>
                                        <asp:TreeNode Text="Marrige-Wear" Value="Marrige Wear" 
                                            NavigateUrl="default.aspx?item="></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="Kids Wear" Value="Kids Wear" meta:resourcekey="TreeNodeResource10">
                                        <asp:TreeNode Text="Nikar" Value="Nikar" NavigateUrl="default.aspx?item=knikar"></asp:TreeNode>
                                        <asp:TreeNode Text="Froks" Value="Froks" NavigateUrl="default.aspx?item=kfork"></asp:TreeNode>
                                        <asp:TreeNode Text="Kids Shirts" Value="Tops" 
                                            NavigateUrl="default.aspx?item=kshirt"></asp:TreeNode>
                                        <asp:TreeNode Text="Kids Jeans" Value="Jeans" 
                                            NavigateUrl="default.aspx?item=kjeans"></asp:TreeNode>
                                        <asp:TreeNode Text="Kids T-Shirts" Value="T-Shirts" 
                                            NavigateUrl="default.aspx?item=ktshirt"></asp:TreeNode>
                                    </asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode Text="Jewellery" Value="Jewellery" meta:resourcekey="TreeNodeResource11">
                                    <asp:TreeNode Text="Platinum" Value="Platinum" meta:resourcekey="TreeNodeResource12">
                                        <asp:TreeNode Text="Platinum Rings" Value="Rings" 
                                            NavigateUrl="default.aspx?item=pring"></asp:TreeNode>
                                        <asp:TreeNode Text="Platinum Earings" Value="Earings" 
                                            NavigateUrl="default.aspx?item=pear"></asp:TreeNode>
                                        <asp:TreeNode Text="Platinum Necklace" Value="Necklaces" 
                                            NavigateUrl="default.aspx?item=neck"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="Diamond" Value="Diamond" meta:resourcekey="TreeNodeResource13">
                                        <asp:TreeNode Text="Diamond Rings" Value="Rings" 
                                            NavigateUrl="default.aspx?item=dring"></asp:TreeNode>
                                        <asp:TreeNode Text="Diamond Earings" Value="Earings" 
                                            NavigateUrl="default.aspx?item=dear"></asp:TreeNode>
                                        <asp:TreeNode Text="Diamond Pendents" Value="Pendents" 
                                            NavigateUrl="default.aspx?item=dpen"></asp:TreeNode>
                                        <asp:TreeNode Text="Diamond Necklace" Value="Necklaces" 
                                            NavigateUrl="default.aspx?item=dneck"></asp:TreeNode>
                                    </asp:TreeNode>
                                    <asp:TreeNode Text="Gold" Value="Gold" meta:resourcekey="TreeNodeResource14">
                                        <asp:TreeNode Text="Gold Rings" Value="Rings" 
                                            NavigateUrl="default.aspx?item=gring"></asp:TreeNode>
                                        <asp:TreeNode Text="Gold Earings" Value="Earings" 
                                            NavigateUrl="default.aspx?item=gear"></asp:TreeNode>
                                        <asp:TreeNode Text="Gold Pendents" Value="Pendents" 
                                            NavigateUrl="default.aspx?item=gpend"></asp:TreeNode>
                                    </asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Maroon" HorizontalPadding="5px"
                                NodeSpacing="0px" VerticalPadding="0px" BackColor="Transparent" BorderColor="Transparent" BorderStyle="None" Font-Bold="True" Font-Italic="True" />
                            <LeafNodeStyle Font-Underline="True" ForeColor="Maroon" Font-Bold="False" Font-Italic="False" />
                            <RootNodeStyle Font-Bold="True" Font-Italic="True" />
                        </asp:TreeView>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="style2" width="874" align="center" valign="top">
          
                 <asp:DataList ID="DataList1" RepeatColumns="3" RepeatLayout="table" 
                        RepeatDirection="horizontal" runat="server" 
                        onitemcommand="DataList1_ItemCommand" onitemdatabound="DataList1_ItemDataBound">
      <HeaderTemplate>
      
      
      
      </HeaderTemplate>
      
                 <ItemTemplate>
              <table>
              <tr>
              <td>
                 <asp:HyperLink Target="_blank" onclick="window.open(this.href,'mywindow','height=600,width=600,scrollbars=1');return false;" NavigateUrl='<%#Eval("prodname","prductinfodetails.aspx?a={0}" )%>'  ID="H1" runat="server"><asp:Image ID="sh1" Height="150px" Width="150px" runat ="server" ImageUrl='<%#Eval("produrl")%>' /></asp:HyperLink>
                 </td>
                 </tr>
                 <tr>
                <td>
                 <asp:Label ID="l1" runat="server" Text='<%#Eval("prodname")%>'></asp:Label>|Rs.<asp:Label ID="l2" runat="server" Text='<%#Eval("prodprice")%>'></asp:Label>
                 </td>
                 </tr>
                 <tr>
                 <td>
                 <asp:LinkButton ID="ii" runat="server" Text="AddToCart"/>
                 </td>
                 </tr>
                 </table>
                 </ItemTemplate>   
            
                <FooterTemplate>
                
                </FooterTemplate>
                </asp:DataList>  
                
                
                
                
                
                
                
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
