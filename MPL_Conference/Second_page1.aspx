<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="Second_page1.aspx.cs" Inherits="MPL_Conference.Second_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .centstyle {
            text-align: center;
            Height = "40%";
            width = "30%";
        }
        .auto-style15 {
            width: 50%;
        }
        .rightalign {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
    <asp:Button ID="btn_logout1" runat="server" OnClick="btn_logout1_Click" Text="Logout" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="centstyle" colspan="2">
                <asp:Label ID="lbl_secondwelcome" runat="server" BackColor="#CCFF99" Text="What do you want to do?" Font-Size="150%" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Button ID="btn_CR1" runat="server" Height="10%" Text="Conference Reservation" Width="50%" Font-Bold="True" Font-Size="100%" OnClick="btn_CR1_Click" />
            </td>
            <td class="rightalign" >
                <asp:Button ID="btn_IDC1" runat="server" Font-Bold="True" Text="Inter Departmental Chat" Font-Size="100%" Height="10%" OnClick="btn_IDC1_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
