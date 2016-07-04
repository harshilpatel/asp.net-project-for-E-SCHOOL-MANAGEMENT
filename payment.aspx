<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:Label ID="Label1" runat="server" Style="z-index: 100; left: 0px; position: absolute;
        top: 0px" Text="Label"></asp:Label>
    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 101;
        left: 284px; position: absolute; top: 295px" Text="We accept Visa ,Master Card, American Express and all major check cards backed by a major credit card company. "
        Width="378px"></asp:Label>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True"
        ForeColor="Black" Style="z-index: 102; left: 253px; position: absolute; top: 270px"
        Text="Paying By Credit Cards"></asp:Label>
    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 103;
        left: 279px; position: absolute; top: 225px" Text="EMART accepts Credit cards, Checks, Money Orders and Wire transfer for payments"
        Width="385px"></asp:Label>
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True"
        ForeColor="Black" Style="z-index: 104; left: 257px; position: absolute; top: 200px"
        Text="Payment Options"></asp:Label>
    <asp:Label ID="Label6" runat="server" BackColor="#FFE0C0" Font-Bold="True" Font-Size="Large"
        Font-Underline="True" ForeColor="#400000" Style="z-index: 105; left: 232px; position: absolute;
        top: 176px" Text="Payment Information"></asp:Label>
    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 106;
        left: 286px; position: absolute; top: 353px" Text="You can safely enter your entire credit card number via our secure server, which encrypts all submitted information. "
        Width="375px"></asp:Label>
    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 107;
        left: 289px; position: absolute; top: 465px" Text="When you placing an order , our custumer service departement will contact your credit card company for authorization from tha issuing bank.this is to protect you, as well as from misuse of lost or stolen credit cards.This authorization process is not a charge. We do not charge your credit cards until we actually contact you to confirm your order."
        Width="374px"></asp:Label>
    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 108;
        left: 287px; position: absolute; top: 406px" Text="Our secure server encrypts all submitted credit card information for your privacy and all the security of your accounts."
        Width="377px"></asp:Label>
    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True"
        ForeColor="Black" Style="z-index: 109; left: 262px; position: absolute; top: 775px"
        Text="Ordering by Check or Money Order"></asp:Label>
    <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 110;
        left: 291px; position: absolute; top: 598px" Text="In some cases, a request for credit card authorization will fail once or twice before final authorization is given. this is not a problem in most cases, and is not necesserily a cause for concern. We will contact you by a email if we expericened a continued diffculties authorizing your credit card. You are always welcome to submit new credit card information to us for an order, provided that the order that the order has not been proceded for shipping.."
        Width="376px"></asp:Label>
<asp:HyperLink ID="gotopayment" runat="server" Font-Bold="true" ForeColor="#400000" Text="Payment Here"  Style="z-index: 109; left: 350px; position: absolute; top: 800px" NavigateUrl="~/default.aspx"></asp:HyperLink>
    &nbsp;
</asp:Content>
