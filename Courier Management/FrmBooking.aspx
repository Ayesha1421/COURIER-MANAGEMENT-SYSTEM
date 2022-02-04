<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FrmBooking.aspx.cs" Inherits="FrmBooking1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="left" style="width: 100px">
                <strong><span style="font-size: 9pt; color: #3333cc; font-family: Verdana">Booking</span></strong></td>
            <td align="left" style="width: 100px">
                <asp:Label ID="lblmsg" runat="server" Text="Item add to Cargo Database" ForeColor="#00CC00" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px"></td>
            <td align="left" style="width: 100px"></td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 21px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Name</span></td>
            <td align="left" style="width: 100px; height: 21px">
                <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 21px">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 133px">
                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Item</span></td>
                    </tr>
                </table>
            </td>
            <td align="left" style="width: 100px; height: 21px">
                <asp:TextBox ID="txtItem" runat="server" Width="155px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 21px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Item Weight</span></td>
            <td align="left" style="width: 100px; height: 21px">
                <asp:TextBox ID="txtWeigth" runat="server" Width="155px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 24px;">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Office Sender</span></td>
            <td align="left" style="width: 100px; height: 24px;">
                <asp:DropDownList ID="cboOfficeS" runat="server"
                    Width="161px" DataTextField="Name" DataValueField="ID">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Office Receiver</span></td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="cboOfficeR" runat="server" Width="163px"  DataTextField="Name" DataValueField="ID">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Wether?</span></td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="cboWhether" runat="server" Width="163px">
                    <asp:ListItem>Courier</asp:ListItem>
                    <asp:ListItem>Cargo</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 22px;">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Expct Rv Date</span></td>
            <td align="left" style="width: 100px; height: 22px;">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px">
                <asp:TextBox ID="Expdate" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 22px;">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Actual Rv Date</span><br />
            </td>
            <td align="left" style="width: 100px; height: 22px;">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 100px">
                <asp:TextBox ID="txtAccdate" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Origin</span></td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="cboOrigin"
                    runat="server" Width="163px">
                </asp:DropDownList>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Destination</span></td>
            <td align="left" style="width: 100px">
                <asp:DropDownList ID="cboDestination" runat="server" Width="162px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 21px">&nbsp;</td>
            <td align="left" style="width: 100px; height: 21px"></td>
        </tr>
        <tr>
            <td align="left" style="width: 100px"></td>
            <td align="left" style="width: 100px">&nbsp;</td>
        </tr>
        <tr>
            <td align="left" style="width: 100px; height: 38px;">
                &nbsp;</td>
            <td align="left" style="width: 100px; height: 38px;">
                <asp:Button ID="btnBook" runat="server" Text="Book Cargo Item" Width="155px" OnClick="btnUpdate_Click" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

