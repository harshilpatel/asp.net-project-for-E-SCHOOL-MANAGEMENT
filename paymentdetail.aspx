<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="paymentdetail.aspx.cs" Inherits="paymentdetail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript">

function abc()
{

var a=document.getElementById("ctl00_ContentPlaceHolder1_TextBox1").value;
var b=document.getElementById("ctl00_ContentPlaceHolder1_TextBox2").value;
var c=document.getElementById("ctl00_ContentPlaceHolder1_TextBox10").value;
var d=document.getElementById("ctl00_ContentPlaceHolder1_TextBox11").value;

if(a=="")
{

alert("Creditcard no. Can not Blank");
return false;

}

if(b=="")
{

alert("Accouont no. Can not be Blank");
return false;

}
if(c=="")
{

alert("Password Can not be Blank");
return false;

}
if(d=="")
{

alert("Confirm Password Can not be Blank");
return false;

}
if(c!=d)
{
alert("Password are not matched");
return false;

}
return true;
}



</script>
<asp:Label ID="Label2" runat="server" Style="z-index: 100; left: 191px; position: absolute;
        top: 136px" Text="<marquee>Your Credit Card Detail</marquee>" Width="327px" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#400000"></asp:Label>
    &nbsp;&nbsp;
    <asp:Label ID="Label22" runat="server" Style="z-index: 103; left: 268px; position: absolute;
        top: 196px" Text="Your Card Information " Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#400000" Width="284px"></asp:Label>
    &nbsp;
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Double" Height="96px" Style="z-index: 104;
        left: 280px; position: absolute; top: 228px" Width="342px">
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp;
        <asp:Label ID="Label3" runat="server" Style="z-index: 100; left: 26px; position: absolute;
            top: 40px" Text="Card Type" Font-Bold="True" ForeColor="#400000"></asp:Label>
        <asp:Label ID="Label5" runat="server" Style="z-index: 101; left: 25px; position: absolute;
            top: 67px" Text="CCN no." Font-Bold="True" ForeColor="#400000"></asp:Label>
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 102; left: 165px; position: absolute;
            top: 7px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Label4" runat="server" Style="z-index: 104; left: 27px; position: absolute;
            top: 13px" Text="Acount no" Font-Bold="True" ForeColor="#400000"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 105; left: 166px; position: absolute;
            top: 66px" Width="147px"></asp:TextBox>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Style="z-index: 107; left: 164px;
            position: absolute; top: 36px" Width="152px">
            <asp:ListItem>Select Card Type</asp:ListItem>
            <asp:ListItem>Visa</asp:ListItem>
            <asp:ListItem>Masetro</asp:ListItem>
            <asp:ListItem>Master</asp:ListItem>
            <asp:ListItem>Electro</asp:ListItem>
        </asp:DropDownList>
    </asp:Panel>
   
    <asp:Panel ID="Panel3" runat="server" BorderStyle="Double" Height="116px" Style="z-index: 109;
        left: 280px; position: absolute; top: 616px" Width="342px">
         <asp:Label ID="Label13" runat="server" Style="z-index: 105; left: 12px; position: absolute;
        top: 24px" Text="Telephone Number" Font-Bold="True" ForeColor="#400000" Width="152px"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server" Style="z-index: 106; left: 188px; position: absolute;
        top: 20px" Width="136px"></asp:TextBox>
    <asp:TextBox ID="TextBox9" runat="server" Style="z-index: 107; left: 192px; position: absolute;
        top: 72px" Width="132px" Height="16px"></asp:TextBox>
    <asp:Label ID="Label14" runat="server" Style="z-index: 108; left: 20px; position: absolute;
        top: 72px" Text="Fax Number" Font-Bold="True" ForeColor="#400000" Width="114px"></asp:Label>
    </asp:Panel>
    <asp:Label ID="Label15" runat="server" Style="z-index: 110; left: 285px; position: absolute;
        top: 768px" Text="Your Password....." Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#400000" Width="230px"></asp:Label>
    <asp:Panel ID="Panel4" runat="server" BorderStyle="Double" Height="80px" Style="z-index: 111;
        left: 292px; position: absolute; top: 816px" Width="339px">
    </asp:Panel>
    <asp:TextBox ID="TextBox10" runat="server" Style="z-index: 112; left: 468px; position: absolute;
        top: 826px" TextMode="Password"></asp:TextBox>
    <asp:TextBox ID="TextBox11" runat="server" Style="z-index: 113; left: 468px; position: absolute;
        top: 864px" TextMode="Password"></asp:TextBox>
    <asp:Label ID="Label17" runat="server" Style="z-index: 114; left: 297px; position: absolute;
        top: 868px" Text="Password Retype" Width="152px" Font-Bold="True" ForeColor="#400000"></asp:Label>
    <asp:Label ID="Label16" runat="server" Style="z-index: 115; left: 316px; position: absolute;
        top: 828px" Text="Password" Font-Bold="True" ForeColor="#400000" Width="120px"></asp:Label>
    <asp:Label ID="Label6" runat="server" Style="z-index: 116; left: 285px; position: absolute;
        top: 344px" Text="Your Receiving Address....." Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#400000" Width="456px"></asp:Label>
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Double" Height="184px" Style="z-index: 117;
        left: 284px; position: absolute; top: 388px" Width="342px">
        <asp:TextBox ID="TextBox4" runat="server" Style="z-index: 100; left: 162px; position: absolute;
            top: 17px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Style="z-index: 101; left: 161px; position: absolute;
            top: 43px"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Style="z-index: 102; left: 162px; position: absolute;
            top: 70px"></asp:TextBox>
        <asp:Label ID="Label7" runat="server" Style="z-index: 103; left: 25px; position: absolute;
            top: 127px" Text="Country" Font-Bold="True" ForeColor="#400000"></asp:Label>
        &nbsp;
        <asp:Label ID="Label8" runat="server" Style="z-index: 105; left: 25px; position: absolute;
            top: 98px" Text="State" Font-Bold="True" ForeColor="#400000"></asp:Label>
        <asp:Label ID="Label9" runat="server" Style="z-index: 106; left: 24px; position: absolute;
            top: 70px" Text="City" Font-Bold="True" ForeColor="#400000"></asp:Label>
        <asp:Label ID="Label10" runat="server" Style="z-index: 107; left: 20px; position: absolute;
            top: 46px" Text="Post Code" Font-Bold="True" ForeColor="#400000"></asp:Label>
        <asp:Label ID="Label11" runat="server" Style="z-index: 108; left: 22px; position: absolute;
            top: 20px" Text="Address" Font-Bold="True" ForeColor="#400000"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server" Style="z-index: 109; left: 161px; position: absolute;
            top: 98px"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Style="z-index: 110;
            left: 161px; position: absolute; top: 126px" Width="156px">
            <asp:ListItem>America</asp:ListItem>
            <asp:ListItem>Bhutan</asp:ListItem>
            <asp:ListItem>China</asp:ListItem>
            <asp:ListItem>India</asp:ListItem>
            <asp:ListItem>Pakisthan</asp:ListItem>
            <asp:ListItem>Nepal</asp:ListItem>
        </asp:DropDownList>
    </asp:Panel>
<asp:Button ID="Button1" runat="server" Style="z-index: 119; left: 513px; position: absolute;
        top: 920px" Text="SUBMIT" OnClientClick="return abc();" BackColor="#FF8000" Font-Bold="True" Font-Overline="True" Font-Size="Large" Font-Underline="True" ForeColor="#400000" Width="166px" OnClick="Button1_Click" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

