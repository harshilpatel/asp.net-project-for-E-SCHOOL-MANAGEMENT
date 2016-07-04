<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newuser.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="WebControlCaptcha" namespace="WebControlCaptcha" tagprefix="cc1" %>
<%@ Register assembly="MSCaptcha" namespace="MSCaptcha" tagprefix="cc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Untitled Page</title> 
   
    <link href="css/index.css" rel="stylesheet" type="text/css" />
  
    <style type="text/css">
        .style5
        {
            height: 38px;
            width: 186px;
        }
        .style7
        {
            height: 45px;
            width: 186px;
        }
        .style8
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            font-weight: bold;
            color: #056FBD;
            text-decoration: none;
            height: 38px;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            font-weight: bold;
            color: #056FBD;
            text-decoration: none;
            height: 39px;
        }
        .style10
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            font-weight: bold;
            color: #666666;
            text-decoration: none;
            height: 38px;
        }
        .style11
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            font-weight: bold;
            color: #666666;
            text-decoration: none;
            height: 32px;
        }
        .style12
        {
            height: 32px;
            width: 186px;
        }
        .style13
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            font-weight: bold;
            color: #666666;
            text-decoration: none;
            height: 41px;
        }
        .style14
        {
            height: 41px;
            width: 186px;
        }
        .style15
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            font-weight: bold;
            color: #666666;
            text-decoration: none;
            height: 39px;
        }
        .style16
        {
            height: 39px;
            width: 186px;
        }
        .style17
        {
            width: 50%;
            background-color: #00ffff;
        }
    </style>
  
</head>
<body style="margin-bottom:0;margin-left:0;margin-top:0;margin-right:0" 
    alink="#ffffff">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" EnablePageMethods="true" runat="server">
    </asp:ScriptManager>
    <div>
    
    </div>
    <table align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="2" height="200" bgcolor="White">
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="news_mainpage"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table cellpadding="0" cellspacing="0" class="style17">
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                onclick="LinkButton1_Click">GoToLoginPage</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="600" bgcolor="White">
                &nbsp;</td>
            <td valign="top" bgcolor="White">
                <table align="center" class="style19">
                    <tr>
                        <td bgcolor="White" class="style8" colspan="2" height="40">
                            Your Account Information</td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="maintext" height="40">
                            User Name</td>
                        <td bgcolor="White" class="style5" height="40">
                            <asp:TextBox ID="txtUsername" runat="server"  CssClass="box"></asp:TextBox>
                               

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtUsername" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="maintext">
                            Password</td>
                        <td bgcolor="White" class="style5" nowrap="40">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="box" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="maintext" height="40">
                            Confirm Password
                        </td>
                        <td bgcolor="White" class="style5">
                            <asp:TextBox ID="txtConfirmpass" runat="server" CssClass="box" 
                                TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtConfirmpass" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtPassword" ControlToValidate="txtConfirmpass" 
                                ErrorMessage="*"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style9" colspan="2" height="50">
                            Your General Information</td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style10" height="40">
                            Firstname</td>
                        <td bgcolor="White" class="style5">
                            <asp:TextBox ID="txtFirstname" runat="server" CssClass="box"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="txtFirstname" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="maintext">
                            LastName</td>
                        <td bgcolor="White" class="style7">
                            <asp:TextBox ID="txtLastname" runat="server" CssClass="box"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtLastname" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style10">
                            Email-address</td>
                        <td bgcolor="White" class="style5">
                            <asp:TextBox ID="txtMail" runat="server" CssClass="box"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtMail" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtMail" ErrorMessage="*" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style8" height="50">
                            Your Address</td>
                        <td bgcolor="White" class="style5">
                            </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style11" height="40">
                            Adress</td>
                        <td bgcolor="White" class="style12">
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="box" Height="50px" 
                                TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="txtPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style13" height="40">
                            City</td>
                        <td bgcolor="White" class="style14">
                            <asp:TextBox ID="txtCity" runat="server" CssClass="box"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                ControlToValidate="txtCity" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style15" height="40">
                            State</td>
                        <td bgcolor="White" class="style16">
                            <asp:TextBox ID="txtstate" runat="server" CssClass="box"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style15" height="40">
                            Pin</td>
                        <td bgcolor="White" class="style16">
                            <asp:TextBox ID="txtPin" runat="server" CssClass="box"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="txtPin" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtPin" ErrorMessage="*" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="maintext" height="40">
                            Country</td>
                        <td bgcolor="White" class="style5">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                                <asp:ListItem>-----Select City-----</asp:ListItem>
                                <asp:ListItem>India</asp:ListItem>
                                <asp:ListItem>Pakistan</asp:ListItem>
                                <asp:ListItem>Nepal</asp:ListItem>
                                <asp:ListItem>Srilanka</asp:ListItem>
                                <asp:ListItem>Bhutan</asp:ListItem>
                                <asp:ListItem>China</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                ControlToValidate="DropDownList1" ErrorMessage="*" 
                                InitialValue="-----Select City-----"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="style8" height="50">
                            Your Contact Information</td>
                        <td bgcolor="White" class="style5">
                            </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="maintext" height="40">
                            Telephone No</td>
                        <td bgcolor="White" class="style5" 
                            style="font-family: Arial; font-size: small; color: #FF0000">
                            <asp:TextBox ID="txtPhonno" runat="server" CssClass="box"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="txtPhonno" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txtPhonno" ErrorMessage="*" 
                                ValidationExpression="^([9]{1})([234789]{1})([0-9]{8})$"></asp:RegularExpressionValidator>
                            <br />
                            (For ex. 989956325)</td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="maintext" height="40">
                            Fax-No.</td>
                        <td bgcolor="White" class="style5">
                            <asp:TextBox ID="txtFax" runat="server" CssClass="box"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                ControlToValidate="txtFax" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="maintext" height="40">
                            Security Question</td>
                        <td bgcolor="White" class="style5">
                            <asp:DropDownList ID="txtSecurityqu" runat="server" Width="150px" 
                                style="margin-bottom: 1px">
                                <asp:ListItem>----Select Question----</asp:ListItem>
                                <asp:ListItem>What is your pet Name?</asp:ListItem>
                                <asp:ListItem>Who is your childhood&#39;s hero?</asp:ListItem>
                                <asp:ListItem>What is your&#39;s puupy name?</asp:ListItem>
                                <asp:ListItem>Who is your favorite actress?</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                ControlToValidate="txtSecurityqu" ErrorMessage="*" 
                                InitialValue="----Select Question----"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="White" class="maintext" height="40">
                            Answer</td>
                        <td bgcolor="White" class="style5">
                            <asp:TextBox ID="txtAnswer" runat="server" CssClass="box"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                                ControlToValidate="txtAnswer" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" height="100" bgcolor="White" align="center">
                <cc1:CaptchaControl ID="CaptchaControl1" runat="server" Height="105px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" height="100" bgcolor="White" align="center">
                <asp:Button ID="Button1" runat="server" CssClass="button" 
                    onclick="Button1_Click" Text="Submit" />
            &nbsp;
            </td>
        </tr>
    </table>
    </form>
    </body>
</html>
