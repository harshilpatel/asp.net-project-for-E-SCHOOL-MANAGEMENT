<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prductinfodetails.aspx.cs" Inherits="prductinfodetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body  style="background-color:#e2d787">
    <form id="form1" runat="server">
    <br /><br /><br /><br /><center>
    <h3>
    <table border="1"  >
    <tr><td colspan="2"> Product Id : <asp:Label runat="server" ID="lid"></asp:Label></td></tr>
    <tr><td colspan="2"> Product Name : <asp:Label runat="server" ID="lname"></asp:Label></td></tr>
    <tr><td><asp:Image ID="Image1" runat="server" />
    <td><br>Product Categery : <asp:Label runat="server" ID="lcat"></asp:Label><br>Product price : <asp:Label runat="server" ID="lprice"></asp:Label></td>
    <td></td></tr>
    <tr><td colspan="2">Product Details : <asp:Label runat="server" ID="Ldetails"></asp:Label></td></tr></table></h3>
    </center>
    
    </form>
</body>
</html>
