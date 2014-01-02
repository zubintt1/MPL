<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="Calendar_page1.aspx.cs" Inherits="MPL_Conference.Calendar_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 134%;
        }
        .centerallign {
            text-align:center;
        }
        .auto-style15 {
        }
        .auto-style16 {
        }
        .auto-style23 {
            height: 30px;
        }
        .auto-style29 {
            width: 15%;
            height: 30px;
        }
        .rightalign {
            text-align:right;
        }
        .auto-style30 {
            height: 28px;
        }
        .auto-style32 {
            width: 4%;
            height: 30px;
        }
        .auto-style34 {
            height: 30px;
            width: 23px;
        }
        .auto-style35 {
            height: 30px;
            width: 169px;
        }
        .auto-style37 {
            height: 30px;
            width: 56px;
        }
        .auto-style38 {
            height: 30px;
            width: 11px;
        }
        .auto-style39 {
            height: 30px;
            width: 20px;
        }
        .auto-style40 {
            height: 38px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
    <asp:Button ID="btn_logout5" runat="server" OnClick="btn_logout5_Click" Text="Logout" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td colspan="8" class="centerallign">
                <asp:Label ID="lbl_welcome3" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="130%" Text="Meetings Of The Month At A Glance"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="8" >
                <table >
                    <tr >
                        <td class="centerallign">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="centerallign">
                            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="292px" NextPrevFormat="FullMonth" Width="373px" OnSelectionChanged="Calendar1_SelectionChanged" >
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="8" >
                <asp:GridView ID="grid_conferstatus1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" >
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
                <asp:Button ID="btn_bmm1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="107%" Text="Book My Meeting" OnClick="btn_bmm1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15" colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">
                <asp:Label ID="lbl_time1" runat="server" BackColor="#CCFF99" Font-Size="125%" Text="Time" Visible="False"></asp:Label>
            </td>
            <td class="auto-style37">
                <asp:Label ID="lbl_timefrom" runat="server" BackColor="#CCFF99" Font-Size="125%" Text="From" Visible="False"></asp:Label>
            </td>
            <td class="auto-style38">
                &nbsp;</td>
            <td class="auto-style35">
                <asp:TextBox ID="txtbx_timefrom1" runat="server" Font-Size="125%" Width="57%" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style39">
                &nbsp;</td>
            <td class="auto-style34">
                <asp:Label ID="lbl_timeto" runat="server" BackColor="#CCFF99" Font-Size="125%" Text="To" Visible="False"></asp:Label>
            </td>
            <td class="auto-style29">
                <asp:TextBox ID="txtbx_timeto1" runat="server" Font-Size="125%" Width="82%" style="margin-left: 0px" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style23">
                <asp:Label ID="lbl_error1" runat="server" Text="Time needed in given conference room is reserved by someone else. Please try another timing." BackColor="#CCFF66" Font-Bold="True" Font-Names="110%" ForeColor="Maroon" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40" colspan="4">
                <asp:Label ID="lbl_conferhallnum1" runat="server" BackColor="#CCFF99" Font-Size="125%" Text="Conference Hall Number" Visible="False"></asp:Label>
            </td>
            <td class="auto-style40" colspan="3">
                <asp:TextBox ID="txtbx_conferhallnum1" runat="server" Font-Size="125%" Width="26%" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style40">
                <asp:Label ID="lbl_notify1" runat="server" Text="Pleasse enter  Conference Hall number between (1-4)" BackColor="#CCFF66" Font-Bold="True" ForeColor="#FF66CC" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="7"></td>
            <td class="auto-style2">
                <asp:Label ID="lbl_error2" runat="server" Text="Please enter a digit between (1-4) in Conference Hall Number." BackColor="#CCFF66" Font-Bold="True" ForeColor="Maroon" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="7">&nbsp;</td>
            <td class="rightalign">
                <asp:Button ID="btn_submit1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="105%" Text="Submit" Enabled="False" OnClick="btn_submit1_Click" style="margin-left: 0px" Visible="False" Width="81px"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style30" colspan="7">
                <asp:Label ID="lbl_booked1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Italic="True" Font-Size="115%" ForeColor="#9933FF" Text="Booked" Visible="False"></asp:Label>
            </td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="7">
                <asp:Button ID="btn_emb1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="107%" Text="Edit My Booking" OnClick="btn_emb1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16" colspan="8">&nbsp;</td>
        </tr>
        </table>
</asp:Content>
