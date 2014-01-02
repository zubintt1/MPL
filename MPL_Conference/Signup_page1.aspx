<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="Signup_page1.aspx.cs" Inherits="MPL_Conference.Signup_page1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .column1 {
            width: 12%;
        }
        .leftalign {
            text-align: left;
            }
        .rightalign {
            text-align: right;
            width: 10%;
        }
        
        .auto-style15 {
            height: 27px;
        }
        .auto-style16 {
            height: 23px;
            width: 14%;
        }
        .auto-style17 {
            height: 40%;
            width: 14%;
        }
        .auto-style18 {
            width: 14%;
        }
        
        .auto-style19 {
            width: 14%;
            height: 26px;
        }
        .auto-style20 {
            height: 26px;
        }
        
        .auto-style21 {
            width: 14%;
            height: 27px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Username</td>
            <td>
                <asp:TextBox ID="txtbx_username1" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Full Name</td>
            <td>
                <asp:TextBox ID="txtbx_fullname1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="background-color: #CCFF99">Department</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtbx_department1" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19" style="background-color: #CCFF99">Age</td>
            <td class="auto-style20">
                <asp:TextBox ID="txtbx_age1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Gender</td>
            <td class="leftalign">
                <asp:RadioButtonList ID="rbl_gender1" runat="server" BackColor="#CCFF99"  RepeatDirection="Horizontal" Width="50%">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" style="background-color: #CCFF99">Date Of Birth</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtbx_dob1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">E-mail address</td>
            <td>
                <asp:TextBox ID="txtbx_email1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Password</td>
            <td>
                <asp:TextBox ID="txtbx_password1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17" style="background-color: #CCFF99">Confirm Password</td>
            <td class="auto-style15">
                <asp:TextBox ID="txtbx_confpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Security Question</td>
            <td>
                <asp:TextBox ID="txtbx_secques1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Answer</td>
            <td>
                <asp:TextBox ID="txtbx_secans1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Button ID="btn_submit2" runat="server" Text="Submit" OnClick="btn_signup3_Click" />
            </td>
            <td>
                <asp:Button ID="btn_csuol1" runat="server" Text="Cancel Sign Up or Login" OnClick="btn_csuol1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_error1" runat="server" Text="The passwords does not match." BackColor="#CCFF66" Visible="False" Font-Bold="True" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_success1" runat="server" BackColor="#CCFF66" Text="Success" Visible="False" Font-Bold="True" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_usercheck1" runat="server" BackColor="#CCFF66" Text="Username already exist. You can Login if you have an account." Visible="False" Font-Bold="True" ForeColor="Maroon"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
