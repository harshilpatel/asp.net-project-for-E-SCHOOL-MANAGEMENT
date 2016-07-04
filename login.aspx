<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/MasterPage.master" CodeFile="login.aspx.cs" Inherits="exsiting_user" EnableSessionState="True" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <script language="javascript" type="text/javascript">
<!--

function IMG1_onclick() 
{

}

// -->
</script>
    
    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Control"
        Style="z-index: 100; left: 200px; position: absolute; top: 184px"
        Width="1020px" Font-Size="Large" Text="<marquee>You Must Be Login To Proceed Further........</marquee>" BackColor="#00C0C0"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="52px" ImageUrl="~/cisco imaged/login.gif"
        OnClick="ImageButton1_Click" Style="z-index: 107; left: 332px; position: absolute;
        top: 204px" Width="276px" />
    <asp:Panel ID="Panel1" runat="server" Height="228px" Style="z-index: 102; left: 292px;
        position: absolute; top: 260px" Width="336px">
        <asp:Login ID="Login1" runat="server" Font-Bold="True" Style="z-index: 100;
            left: 8px; position: absolute; top: 16px" Width="322px" PasswordRecoveryUrl="~/forgetpasswd.aspx" OnAuthenticate="Login1_Authenticate" Font-Underline="True" TitleText="" Height="204px">
            <CheckBoxStyle Font-Bold="True" ForeColor="#400000" />
            <InstructionTextStyle Font-Bold="True" />
            <TextBoxStyle Font-Bold="True" Font-Underline="True" ForeColor="#400000" />
            <LoginButtonStyle
                Font-Bold="True" Font-Overline="True" Font-Underline="True" />
            <LabelStyle Font-Bold="True" ForeColor="#400000" />
        </asp:Login>
    </asp:Panel>
    &nbsp; &nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Transparent" Font-Bold="True"
        Style="z-index: 103; left: 524px; position: absolute; top: 520px" Width="152px" OnClick="LinkButton1_Click">Forget Password</asp:LinkButton>
    <asp:LinkButton ID="LinkButton2" runat="server" BackColor="Transparent" Font-Bold="True"
        Style="z-index: 104; left: 292px; position: absolute; top: 520px" OnClick="LinkButton2_Click" Width="100px">New User</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" OnClick="LinkButton3_Click"
        Style="z-index: 105; left: 368px; position: absolute; top: 556px" Width="144px">ChangePassword</asp:LinkButton>
    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#400000" Style="z-index: 106;
        left: 372px; position: absolute; top: 260px" Text="Existing User Login Here " Width="228px" Font-Underline="True"></asp:Label>
</asp:Content>


