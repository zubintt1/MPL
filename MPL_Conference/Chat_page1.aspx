<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page1.Master" AutoEventWireup="true" CodeBehind="Chat_page1.aspx.cs" Inherits="MPL_Conference.Chat_page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }
        .centeralign {
            text-align: center;
        }
        .deptwidth {
            width: 20%;
        }
        .chatwidth {
            width: 50%;
        }
        .peoplewidth {
            width: 30%;
        }
        .auto-style15 {
            width: 66%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder2" runat="server">
    <asp:Button ID="btn_logout4" runat="server" Text="Logout" OnClick="btn_logout4_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td colspan="3" class="centeralign">
                <asp:Label ID="lbl_welcome3" runat="server" BackColor="#CCFF99" Font-Size="140%" Text="Welcome to the Integerated Chat Facility"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" class="auto-style2"></td>
        </tr>
        <tr>
            <td class="deptwidth">
                <asp:Label ID="lbl_dept3" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Size="110%" Text="Department"></asp:Label>
            </td>
            <td class="centeralign">
                <asp:Label ID="lbl_chat1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Size="110%" Text="Chat"></asp:Label>
            </td>
            <td class="peoplewidth">
                <asp:Label ID="lbl_employee1" runat="server" BackColor="#CCFF99" Font-Bold="True" Font-Size="110%" Text="Employees"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:RadioButtonList ID="rbtnlst_dept1" runat="server" OnSelectedIndexChanged="rbtnlst_dept1_SelectedIndexChanged" >
                    <asp:ListItem>Land</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style15">
                <asp:ListBox ID="lsbx_msg1" runat="server" Width="100%" Height="137px" ></asp:ListBox>
            </td>
            <td>
                <asp:CheckBoxList ID="chkbxlst_onlineuser1" runat="server" Visible="False" OnSelectedIndexChanged="chkbxlst_onlineuser1_SelectedIndexChanged" >
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style15" >
                <asp:TextBox ID="txtbx_chatmsg1" runat="server" Width="90%" Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btn_msgsend1" runat="server" Text="Send" OnClick="btn_msgsend1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
