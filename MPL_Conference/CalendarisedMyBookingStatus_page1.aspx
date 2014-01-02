<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="CalendarisedMyBookingStatus_page1.aspx.cs" Inherits="MPL_Conference.CalendarisedMyBookingStatus_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        
        .auto-style15 {
        }

        .leftalign {
            text-align:left;
        }
        .rightalign {
            text-align:right;
        }
        .auto-style16 {
            text-align: left;
            width: 385px;
        }
        .auto-style17 {
        }
        .auto-style19 {
            width: 7%;
        }
        .auto-style20 {
            width: 11%;
        }
        .auto-style23 {
            width: 428px;
            height: 30px;
        }
        .auto-style25 {
            height: 30px;
        }
        .auto-style27 {
            width: 4%;
        }
        .auto-style28 {
            height: 30px;
        }
        .auto-style29 {
            width: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
    <asp:Button ID="btn_logout6" runat="server" OnClick="btn_logout6_Click" Text="Logout" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td colspan="8" class="centerallign">
                <asp:Label ID="lbl_welcome4" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="130%" Text="My Booking Status"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="8">
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
            <td colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td colspan="4">
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="270px" NextPrevFormat="FullMonth" Width="333px" OnSelectionChanged="Calendar2_SelectionChanged">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="8">
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
        </tr>
        <tr>
            <td colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="8">
                <asp:Label ID="lbl_notify2" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" ForeColor="#FF66CC" Text="There are no bookings on this date at all." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="7">
                <asp:Button ID="btn_embs2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="95%" Text="Edit My Booking Status" OnClick="btn_embs2_Click" />
            </td>
            <td class="rightalign">
                <asp:Button ID="btn_delmb1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="95%" Text="Delete My Booking" OnClick="btn_delmb1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="lbl_time2" runat="server" BackColor="#CCFF99" BorderColor="#CCFF99" Font-Size="112%" Text="Time" Visible="False"></asp:Label>
            </td>
            <td class="auto-style19">
                <asp:Label ID="lbl_timefrom2" runat="server" BackColor="#CCFF99" Font-Size="112%" Text="From" Visible="False"></asp:Label>
            </td>
            <td class="auto-style20" colspan="3">
                <asp:TextBox ID="txtbx_timefrom2" runat="server" Font-Size="100%" Width="70px" Height="22px" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style27">
                <asp:Label ID="lbl_timeto2" runat="server" BackColor="#CCFF99" Font-Size="112%" Text="To" Visible="False"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:TextBox ID="txtbx_timeto2" runat="server" Font-Size="100%" Height="22px" Width="70px" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbl_error1" runat="server" Text="Time needed in given conference room is reserved by someone else. Please try another timing." BackColor="#CCFF66" Font-Bold="True" ForeColor="Maroon" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23" colspan="3">
                <asp:Label ID="lbl_conferhallnum2" runat="server" BackColor="#CCFF99" Font-Size="112%" Text="Conference Hall Number" Visible="False"></asp:Label>
            </td>
            <td class="auto-style28" colspan="4">
                <asp:TextBox ID="txtbx_conferhallnum2" runat="server" Font-Size="100%" Width="50px" Height="22px" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style25">
                <asp:Label ID="lbl_notify1" runat="server" Text="Pleasse enter  Conference Hall number between (1-4)" BackColor="#CCFF66" Font-Bold="True" Font-Italic="True" ForeColor="#FF66CC" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="7">&nbsp;</td>
            <td>
                <asp:Label ID="lbl_error2" runat="server" Text="Please enter a digit between (1-4) in Conference Hall Number." BackColor="#CCFF66" Font-Bold="True" Font-Italic="False" ForeColor="Maroon" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="leftalign" colspan="7">
                <asp:Button ID="btn_del1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="100%" Text="Delete" Enabled="False" Visible="False" OnClick="btn_del1_Click" />
            </td>
            <td class="rightalign">
                <asp:Button ID="btn_submit1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="100%" Text="Submit" Enabled="False" Visible="False" OnClick="btn_submit1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td class="leftalign" colspan="7">
                <asp:Label ID="lbl_booked1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="115%" ForeColor="#6600FF" Text="Booked" Visible="False"></asp:Label>
            </td>
            <td class="rightalign">
                <asp:Label ID="lbl_bookingdel1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="115%" ForeColor="#6600FF" Text="Booking Deleted" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
