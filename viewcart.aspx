<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/MasterPage.master" CodeFile="viewcart.aspx.cs" Inherits="viewcart" Culture="ar-AE" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1" Visible ="false" EnableViewState ="false"  >
 
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <%--<script>
function check()
{
document.getElementById(



}


</script>--%>
    &nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" Style="z-index: 100; left: 260px; position: absolute;
        top: 272px" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ProductID" />
            <asp:BoundField DataField="RatePerUnit" HeaderText="RatePerUnit" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                        top: 0px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="Can't leave blank" runat="server"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator Display="Dynamic" runat="server" ControlToValidate="TextBox1" MaximumValue="50" MinimumValue="1" Type="Integer" ErrorMessage="Not valid"></asp:RangeValidator>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="AddToCart">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 100; left: 0px; position: relative;
                        top: 0px">UpdateCart</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server" Style="z-index: 105; left: 240px; position: absolute;
        top: 456px" Width="420px"></asp:Label>
    <asp:Button ID="Button1" runat="server" Style="z-index: 102; left: 524px; position: absolute;
        top: 500px" Text="Check Out" OnClick="Button1_Click" Width="116px" />
    &nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Style="z-index: 104; left: 252px; position: absolute;
        top: 500px" Text="Continue Shopping" OnClick="Button3_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydatabaseConnectionString2 %>"
        SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
</asp:Content>
