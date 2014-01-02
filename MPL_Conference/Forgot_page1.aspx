<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="Forgot_page1.aspx.cs" Inherits="MPL_Conference.Forgot_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        
        .auto-style15 {
        }
        .auto-style16 {
        }
        .auto-style17 {
        }
        .auto-style18 {
            width: 13%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td style="font-size: 120%; font-family: 'Times New Roman', Times, serif; font-style: normal; font-weight: bold; background-color: #454545" class="auto-style17" colspan="2">
                <asp:Label ID="Label5" runat="server" BackColor="#CCFF99" Font-Bold="True" Text="What is your?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Full Name</td>
            <td>
                <asp:TextBox ID="txtbx_fullname2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Department</td>
            <td>
                <asp:TextBox ID="txtbx_department2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Age</td>
            <td>
                <asp:TextBox ID="txtbx_age2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Gender</td>
            <td>
                <asp:RadioButtonList ID="rbl_gender2" runat="server" BackColor="#CCFF99" RepeatDirection="Horizontal" Width="50%">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Date Of Birth</td>
            <td>
                <asp:TextBox ID="txtbx_dob2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">E-mail Address</td>
            <td>
                <asp:TextBox ID="txtbx_email2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Button ID="btn_ok1" runat="server" Height="33px" Text="OK" Width="78px" OnClick="btn_ok1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_error3" runat="server" Text="The give details couldn't be found in our database either due to invalid input or you haven't signed up." BackColor="#CCFF66" Font-Bold="True" ForeColor="Maroon" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style2"></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbl_error4" runat="server" Text="Haven't Signed Up yet? Let's Sign Up." BackColor="#CCFF66" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Button ID="btn_signup4" runat="server" Text="Sign Up" Height="35px" Width="68px" OnClick="btn_signup4_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Security Question</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Question</td>
            <td>
                <asp:TextBox ID="txtbx_secques2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18" style="background-color: #CCFF99">Answer</td>
            <td>
                <asp:TextBox ID="txtbx_secans2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Button ID="btn_submit1" runat="server" Text="Submit" Height="32px" Width="75px" />
            </td>
            <td>
                <asp:Button ID="btn_login3" runat="server" Height="31px" Text="Login" Width="69px" OnClick="btn_login3_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="2">
                <asp:Label ID="lbl_error5" runat="server" Text="Your security question's answer is wrong. Please enter the correct answer." BackColor="#CCFF66" Font-Bold="True" ForeColor="Maroon" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
