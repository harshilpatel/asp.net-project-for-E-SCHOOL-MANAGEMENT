<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productsdetail.aspx.cs" MasterPageFile ="~/MasterPage.master" Inherits="productsdetail" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    &nbsp;&nbsp;
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mydatabaseConnectionString %>"
        DeleteCommand="DELETE FROM [products] WHERE [prodid] = @prodid" InsertCommand="INSERT INTO [products] ([prodid], [prodname], [prodprice], [catid], [prodqty], [proddes], [produrl]) VALUES (@prodid, @prodname, @prodprice, @catid, @prodqty, @proddes, @produrl)"
        SelectCommand="SELECT * FROM [products] WHERE ([prodid] = @prodid) ORDER BY [prodid], [catid]"
        UpdateCommand="UPDATE [products] SET [prodname] = @prodname, [prodprice] = @prodprice, [catid] = @catid, [prodqty] = @prodqty, [proddes] = @proddes, [produrl] = @produrl WHERE [prodid] = @prodid">
        <DeleteParameters>
            <asp:Parameter Name="prodid" Type="String" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="prodname" Type="String" />
            <asp:Parameter Name="prodprice" Type="Int32" />
            <asp:Parameter Name="catid" Type="String" />
            <asp:Parameter Name="prodqty" Type="Int32" />
            <asp:Parameter Name="proddes" Type="String" />
            <asp:Parameter Name="produrl" Type="String" />
            <asp:Parameter Name="prodid" Type="String" />
        </UpdateParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="prodid" SessionField="imageurl" Type="String" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="prodid" Type="String" />
            <asp:Parameter Name="prodname" Type="String" />
            <asp:Parameter Name="prodprice" Type="Int32" />
            <asp:Parameter Name="catid" Type="String" />
            <asp:Parameter Name="prodqty" Type="Int32" />
            <asp:Parameter Name="proddes" Type="String" />
            <asp:Parameter Name="produrl" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>--%>
  <%--  <asp:Panel ID="Panel1" runat="server" Height="263px" Style="z-index: 103; left: 203px;
        position: absolute; top: 351px" Width="509px">
        &nbsp;</asp:Panel>--%>
    <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 100; left: 544px;
        position: absolute; top: 728px" Width="97px" OnClick="LinkButton1_Click">Add To Cart</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/belts.aspx" Style="z-index: 102;
        left: 242px; position: absolute; top: 731px">Continue Shopping</asp:HyperLink>
    <asp:Panel ID="Panel1" runat="server" Height="400px" ScrollBars="Vertical" Style="z-index: 103;
        left: 220px; position: absolute; top: 268px" Width="741px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Style="z-index: 100;
            left: 2px; position: absolute; top: 4px">
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="Prod id" SortExpression="prodid" />
                <asp:BoundField DataField="prodprice" HeaderText="Unit Price in rs" ReadOnly="True"
                    SortExpression="prodprice" />
                <asp:BoundField DataField="catid" HeaderText="Category Id" ReadOnly="True" SortExpression="catid" />
                <asp:BoundField DataField="proddes" HeaderText="Product Description" ReadOnly="True"
                    SortExpression="proddes" />
                <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Width ="30px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ImageField DataImageUrlField="produrl" HeaderText="Image" ReadOnly="True">
                </asp:ImageField>
                <asp:BoundField DataField="prodname" HeaderText="Product Name" ReadOnly="True" SortExpression="prodname" />
                <asp:TemplateField HeaderText="Add Item">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        &nbsp;
    </asp:Panel>
</asp:Content>
