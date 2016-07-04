<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/MasterPage.master" CodeFile="changpasswd.aspx.cs" Inherits="Recoverypasswd" %>


<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <asp:ChangePassword ID="ChangePassword1" runat="server" Style="z-index: 100; left: 237px;
        position: absolute; top: 209px" Font-Bold="True" Font-Size="Medium" 
        ForeColor="#400000" Width="432px" 
        OnChangedPassword="ChangePassword1_ChangedPassword" Height="160px" 
        OnChangingPassword="ChangePassword1_ChangingPassword" 
        CancelDestinationPageUrl="~/login.aspx" ChangePasswordFailureText="">
        <CancelButtonStyle BackColor="#FF8000" BorderColor="#C04000" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True"
            ForeColor="#400000" />
        <ChangePasswordButtonStyle BackColor="#FF8000" BorderColor="#C04000" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True"
            ForeColor="#400000" />
        <ContinueButtonStyle BackColor="#FF8000" BorderColor="#C04000" BorderStyle="Solid"
            BorderWidth="1px" Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Strikeout="False"
            Font-Underline="True" ForeColor="#400000" />
        <FailureTextStyle Font-Bold="True" Font-Underline="True" />
        <SuccessTextStyle BackColor="Transparent" Font-Bold="True" ForeColor="#400000" />
        <TitleTextStyle Font-Size="Large" Font-Underline="True" />
        <ValidatorTextStyle Font-Bold="True" Font-Underline="True" />
        <ChangePasswordTemplate>
            <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" style="width: 432px; height: 160px">
                            <tr>
                                <td align="center" colspan="2" style="font-size: large; text-decoration: underline">
                                    Change Your Password</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword"
                                        ErrorMessage="Password is required." Font-Bold="True" Font-Underline="True" ToolTip="Password is required."
                                        ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword"
                                        ErrorMessage="New Password is required." Font-Bold="True" Font-Underline="True"
                                        ToolTip="New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label></td>
                                <td>
                                    <asp:TextBox ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword"
                                        ErrorMessage="Confirm New Password is required." Font-Bold="True" Font-Underline="True"
                                        ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                                        ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry."
                                        Font-Bold="True" Font-Underline="True" ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="font-weight: bold; color: red; text-decoration: underline">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Button ID="ChangePasswordPushButton" runat="server" BackColor="#FF8000" BorderColor="#C04000"
                                        BorderStyle="Solid" BorderWidth="1px" CommandName="ChangePassword" Font-Bold="True"
                                        Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="#400000"
                                        Text="Change Password" ValidationGroup="ChangePassword1" 
                                        onclick="ChangePasswordPushButton_Click" />
                                </td>
                                <td>
                                    &nbsp;
                                    <asp:Button ID="CancelPushButton" runat="server" BackColor="#FF8000" BorderColor="#C04000"
                                        BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="Cancel"
                                        Font-Bold="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True"
                                        ForeColor="#400000" Text="Cancel" style="z-index: 100; left: 276px; position: absolute; top: 220px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ChangePasswordTemplate>
    </asp:ChangePassword>
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Height="56px" Style="z-index: 102;
        left: 676px; position: absolute; top: 240px" Width="156px"></asp:Label>
</asp:Content>
