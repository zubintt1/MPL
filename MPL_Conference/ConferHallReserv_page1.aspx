<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="ConferHallReserv_page1.aspx.cs" Inherits="MPL_Conference.ConferHallReserv_page1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .columnstyle1 {
        }
        .auto-style16 {
            width: 20%;
        }
        .timewidth {
            width: 5%;
            height: auto;
        }
        .timetxtbxwidth {
            width: 5%;
        }
        .rightalign {
            text-align: right;
        }
        .auto-style17 {
            height: "20%";
            width: 20%;
        }
        .auto-style18 {
            width: 23px;
        }
        .auto-style19 {
            width: 16px;
        }
        .auto-style20 {
            width: 18px;
        }
        .auto-style21 {
            width: 2%;
            height: auto;
        }
        .auto-style22 {
            width: 4%;
            height: auto;
        }
        .auto-style23 {
            height: "22px";
            width: 20%;
        }
        .auto-style24 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
    <asp:Button ID="btn_logout2" runat="server" OnClick="btn_logout1_Click" Text="Logout" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td colspan="9">
                <asp:Label ID="Label2" runat="server" BackColor="#CCFF99" Font-Size="125%" Text="When do you want to book the Conference Hall?"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="9">&nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #CCFF99" class="auto-style17">Date</td>
            <td colspan="8">
                <asp:TextBox ID="txtbx_conferdate1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="background-color: #CCFF99" class="auto-style17">Time</td>
            <td class="auto-style22" style="background-color: #CCFF99">From</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="timetxtbxwidth">
                <asp:TextBox ID="txtbx_confertimefrom1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style21" style="background-color: #CCFF99">To</td>
            <td class="auto-style20">&nbsp;</td>
            <td class="timetxtbxwidth">
                <asp:TextBox ID="txtbx_confertimeto1" runat="server" ></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbl_error7" runat="server" BackColor="#CCFF66" Font-Bold="True" ForeColor="Maroon" Text="Time needed in given conference room is reserved by someone else. Please try another timing." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #CCFF99" class="auto-style17">Conference Hall Number</td>
            <td colspan="4">
                <asp:TextBox ID="txtbx_conferhallnum1" runat="server"></asp:TextBox>
            </td>
            <td colspan="4">
                <asp:Label ID="lbl_msg1" runat="server" BackColor="#CCFF66" Font-Bold="True" ForeColor="#FF66CC" Text="Pleasse enter  Conference Hall number between (1-4)"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #CCFF99" class="auto-style17">&nbsp;</td>
            <td colspan="4">
                &nbsp;</td>
            <td colspan="4">
                <asp:Label ID="lbl_error8" runat="server" BackColor="#99FF66" Font-Bold="True" ForeColor="Maroon" Text="Please enter a digit between (1-4) in Conference Hall Number." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td colspan="8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_submit3" runat="server" Text="Submit" Font-Size="100%" OnClick="btn_submit3_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td colspan="8">
                <asp:Label ID="lbl_booked1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="110%" ForeColor="#6666FF" Text="Booked" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="columnstyle1" colspan="9">
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td colspan="8">
                <asp:Button ID="btn_dcbs1" runat="server" Font-Bold="True" Font-Size="100%" Text="Display Current Booking Status" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="columnstyle1" colspan="9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td colspan="8" class="auto-style24">
                <asp:GridView ID="grid_conferstatus" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td colspan="8"></td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td colspan="8">
                <asp:Button ID="btn_smbs1" runat="server" Font-Bold="True" Font-Size="100%" OnClick="btn_smbs1_Click" Text="See My Booking Status" />
            </td>
        </tr>
    </table>
    </asp:Content>
