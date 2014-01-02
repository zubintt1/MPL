<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="Signup-Confirmation_page1.aspx.cs" Inherits="MPL_Conference.Signup_Confermation_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td>
                <asp:Label ID="lbl_welcome3" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Size="110%" Text="Your details have been saved and hence your sign up has been done successfully."></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Size="110%" Text="Now redirecting to your account."></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
