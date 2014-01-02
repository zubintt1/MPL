<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="First_page1.aspx.cs" Inherits="MPL_Conference.First_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .leftalign {
            text-align: left;
            width: 10%;
        }
        .rightalign {
            text-align: right;
            width: 10%;
        }

        .auto-style17 {
            width: 100%;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
    <table class="auto-style17">
        <tr>
            <td class="leftalign">
                <asp:Button ID="btn_login1" runat="server" Text="Login" OnClick="btn_login1_Click1" />
            </td>
            <td class="rightalign">
                <asp:Button ID="btn_signup1" runat="server" Text="Sign Up" OnClick="btn_signup1_Click" />
                </td>
            <td class="leftalign">
                &nbsp;</td>
            <td class="leftalign">
                &nbsp;</td>
            <td class="leftalign">
                &nbsp;</td>
            
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
</asp:Content>
