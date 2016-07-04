<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="forgetpasswd.aspx.cs" Inherits="forgetpasswd" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    &nbsp;
    <asp:PasswordRecovery ID="PasswordRecovery2" runat="server" Font-Bold="True" ForeColor="#400000"
        Height="121px" Style="z-index: 100; left: 236px; position: absolute; top: 215px"
        Width="387px" OnVerifyingUser="PasswordRecovery2_VerifyingUser" SuccessText="" UserNameFailureText=""">
        <SuccessTextStyle Font-Bold="True" Font-Underline="True" ForeColor="#400000" />
        <ValidatorTextStyle Font-Bold="True" />
        <LabelStyle Font-Bold="True" ForeColor="#400000" />
        <TitleTextStyle Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#400000" />
        <SubmitButtonStyle BackColor="#FF8000" BorderColor="#C04000" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Overline="True" Font-Size="Large" Font-Underline="True"
            ForeColor="#400000" />
        <FailureTextStyle Font-Bold="True" />
    </asp:PasswordRecovery>
    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 106; left: 372px; position: absolute;
        top: 384px"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 280px; position: absolute;
        top: 344px" Text="HintQuest." Width="72px"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 103; left: 284px; position: absolute;
        top: 384px" Text="Answer" Width="64px"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Style="z-index: 104; left: 368px;
        position: absolute; top: 344px" Width="164px">
        <asp:ListItem>What is your pet name?</asp:ListItem>
        <asp:ListItem>what is your favourite actor?</asp:ListItem>
        <asp:ListItem>what is your favourite flower?</asp:ListItem>
        <asp:ListItem>what is your phone number?</asp:ListItem>
        <asp:ListItem>who is your best friend?</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" Style="z-index: 105; left: 236px; position: absolute;
        top: 472px" Width="388px"></asp:Label>
</asp:Content>

