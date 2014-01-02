<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="MyBookingStatus_page1.aspx.cs" Inherits="MPL_Conference.MyBookingStatus_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .centeralign {
            text-align: center;
        }
        .auto-style15 {
        }
        .rightaling {
            text-align: right;
        }
        .auto-style16 {
        }
        .auto-style19 {
            width: 16%;
        }
        .auto-style20 {
            width: 17%;
        }
        .auto-style26 {
            width: 1%;
        }
        .auto-style28 {
            width: 13%;
        }
        .auto-style29 {
            width: 5%;
        }
        .auto-style31 {
            width: 29%;
        }
        .auto-style32 {
            width: 73%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
    <asp:Button ID="btn_logout3" runat="server" OnClick="btn_logout3_Click" Text="Logout" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td colspan="11" class="centeralign">
                <asp:Label ID="lbl_welcome2" runat="server" BackColor="#CCFF99" Font-Size="140%" Height="100%" Text="My Booking Status" Width="29%"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="11">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="11" class="centeralign">
                <asp:GridView ID="grid_mybookingstatus1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="10">
                <asp:Button ID="btn_embs1" runat="server" Font-Bold="True" Font-Size="100%" Text="Edit My Booking Status" OnClick="btn_embs1_Click" />
            </td>
            <td class="rightaling">
                <asp:Button ID="btn_dmb1" runat="server" Font-Bold="True" Font-Size="100%" Text="Delete My Booking" OnClick="btn_dmb1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20" colspan="2">
                <asp:Label ID="lbl_date1" runat="server" BackColor="#CCFF99" Font-Size="115%" Text="Date" Visible="False"></asp:Label>
            </td>
            <td class="auto-style19" colspan="8">
                <asp:TextBox ID="txtbx_conferdate2" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11"></td>
        </tr>
        <tr>
            <td class="auto-style20" colspan="2">
                <asp:Label ID="lbl_time1" runat="server" BackColor="#CCFF99" Font-Size="115%" Text="Time" Visible="False"></asp:Label>
            </td>
            <td colspan="2">
                <asp:Label ID="lbl_timefrom1" runat="server" BackColor="#CCFF99" Font-Size="115%" Text="From" Visible="False"></asp:Label>
            </td>
            <td colspan="4">
                <asp:TextBox ID="txtbx_confertimefrom2" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:Label ID="lbl_timeto1" runat="server" BackColor="#CCFF99" Font-Size="115%" Text="To" Visible="False"></asp:Label>
            </td>
            <td class="auto-style31">
                <asp:TextBox ID="txtbx_confertimeto2" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbl_error9" runat="server" BackColor="#CCFF66" Font-Bold="True" Font-Size="110%" ForeColor="#990000" Text="Time given is not available. Please try a different schedule." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11"></td>
        </tr>
        <tr>
            <td class="auto-style28" colspan="7">
                <asp:Label ID="lbl_conferhallno1" runat="server" BackColor="#CCFF99" Font-Size="115%" Text="Conference Hall Number" Visible="False"></asp:Label>
            </td>
            <td class="auto-style16" colspan="3">
                <asp:TextBox ID="txtbx_conferhallnum2" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbl_msg2" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Size="110%" ForeColor="#FF66CC" Text="Please enter a number between (1-4)" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style28" colspan="7">
                &nbsp;</td>
            <td class="auto-style16" colspan="3">
                <asp:Label ID="lbl_error10" runat="server" BackColor="#CCFF66" Font-Bold="True" Font-Size="110%" ForeColor="#990000" Text="Please enter a digit between (1-4) in Conference Hall Number." Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="11"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="10">
                <asp:Button ID="btn_delete1" runat="server" Font-Bold="True" Font-Size="100%" OnClick="btn_delete1_Click" Text="Delete" Visible="False" />
            </td>
            <td class="rightaling">
                <asp:Button ID="btn_submit4" runat="server" Font-Bold="True" Font-Size="100%" Text="Submit" OnClick="btn_submit4_Click" Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="10">
                <asp:Label ID="lbl_booked2" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="115%" ForeColor="#6666FF" Text="Booked" Visible="False"></asp:Label>
            </td>
            <td class="rightaling">
                <asp:Label ID="lbl_bookingdel1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="115%" ForeColor="#6666FF" Text="Booking Deleted" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style29" colspan="3">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style16" colspan="3">
                <asp:Button ID="btn_dcbs2" runat="server" Font-Bold="True" Font-Size="100%" OnClick="btn_dcbs2_Click" Text="Display Current Booking Status" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="5">&nbsp;</td>
            <td class="auto-style16" colspan="5">
                <asp:GridView ID="grid_conferstatus2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
