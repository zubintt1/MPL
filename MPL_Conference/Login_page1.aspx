<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="Login_page1.aspx.cs" Inherits="MPL_Conference.Login_page1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
        }
        .auto-style16 {
            width: 17%;
        }
        .leftalign {
            text-align: left;
        }
        .rightalign {
            text-align: right;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style16" style="background-color: #CCFF99">Username</td>
            <td colspan="2">
                <asp:TextBox ID="txtbx_username2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_usernamecheck2" runat="server" BackColor="#CCFF66" Font-Bold="True" Text="Username Incorrect" Visible="False" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #CCFF99">Password</td>
            <td>
                <asp:TextBox ID="txtbx_password2" runat="server" TextMode="Password"></asp:TextBox>
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_passwordcheck2" runat="server" BackColor="#CCFF66" Font-Bold="True" ForeColor="Maroon" Text="Incorrect Password" Visible="False"></asp:Label>
                
            </td>
            <td class="leftalign">
                <asp:Button ID="btn_frgetpass1" runat="server" Text="Forgot your password?" OnClick="btn_frgetpass1_Click" />
           </td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #CCFF99">Department</td>
            <td colspan="2">
                <asp:TextBox ID="txtbx_department2" runat="server"></asp:TextBox>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_departmentcheck2" runat="server" BackColor="#CCFF66" Font-Bold="True" ForeColor="Maroon" Text="Department Incorrect" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #454545">&nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #454545">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:CheckBox ID="chkbx_kmsi1" runat="server" Text="Keep me signed in" Visible="False" BackColor="#CCFF99"/>
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #454545">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #454545">
                <asp:Button ID="btn_ok2" runat="server" Text="OK" Height="50%" Width="38%" OnClick="btn_login2_Click" />
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #454545">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #454545">
                <asp:Label ID="lbl_option1" runat="server" BackColor="#CCFF99" Text="Haven't Signed Up yet?" Visible="False"></asp:Label>
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #454545">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #454545">
                <asp:Button ID="btn_signup2" runat="server" Text="Sign Up" Height="50%" Width="38%" OnClick="btn_signup2_Click" Visible="False" />
            </td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #454545">&nbsp;</td>
            <td colspan="2" style="background-color: #454545">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="3" style="background-color: #454545">
                <asp:Label ID="lbl_error2" runat="server" Text="The given username or password is not correct. Please enter a valid username and password." BackColor="#CCFF66" Font-Bold="True" Visible="False" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
