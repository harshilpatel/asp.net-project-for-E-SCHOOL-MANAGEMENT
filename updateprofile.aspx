<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/MasterPage.master" CodeFile="updateprofile.aspx.cs" Inherits="updatepro" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True"
        ForeColor="#400000" Style="z-index: 100; left: 324px; position: absolute; top: 220px"
        Text="My Account Information " Width="252px"></asp:Label>
    &nbsp;&nbsp;
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Double" Height="308px" Style="z-index: 103;
        left: 296px; position: absolute; top: 268px" Width="360px">
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 100; left: 160px; position: absolute;
            top: 92px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 101; left: 160px; position: absolute;
            top: 128px"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 102; left: 160px; position: absolute;
            top: 164px"></asp:TextBox>
        &nbsp; &nbsp;
        <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 104;
            left: 32px; position: absolute; top: 200px" Text="State"></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 105;
            left: 32px; position: absolute; top: 164px" Text="City"></asp:Label>
        <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 106;
            left: 32px; position: absolute; top: 128px" Text="Post Code"></asp:Label>
        <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 107;
            left: 32px; position: absolute; top: 88px" Text="Address "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 108; left: 160px; position: absolute;
            top: 200px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 110;
            left: 28px; position: absolute; top: 12px" Text="First Name:"></asp:Label>
        <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 111;
            left: 32px; position: absolute; top: 244px" Text="E-mailID:"></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server" Style="z-index: 116; left: 168px; position: absolute;
            top: 244px"></asp:TextBox>
        <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 113;
            left: 28px; position: absolute; top: 52px" Text="Last Name:"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server" Style="z-index: 114; left: 160px; position: absolute;
            top: 12px"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server" Style="z-index: 115; left: 160px; position: absolute;
            top: 52px"></asp:TextBox>
    </asp:Panel>
    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#FF8000" Font-Bold="True" Font-Overline="True"
        Font-Size="Large" Font-Underline="True" ForeColor="#400000" Style="z-index: 112;
        left: 448px; position: absolute; top: 604px" Text="Update Profile" Width="166px" OnClick="Button1_Click" />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#400000"
        Style="z-index: 114; left: 248px; position: absolute; top: 160px" Text="<marquee>Update Your Profile</marquee>"
        Width="424px"></asp:Label>
</asp:Content>


