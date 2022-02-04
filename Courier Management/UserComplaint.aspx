<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UserComplaint.aspx.cs" Inherits="UserComplain" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 146px">
                <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">Complaints
                                                of User</span></strong></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 146px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 146px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Complaint</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtComplaint" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 146px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">User ID</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
            </td>
        </tr>
       <tr>
            <td style="width: 146px">
                <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Office</span></td>
            <td style="width: 100px" align="justify">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="2">Gurgaon</asp:ListItem>
                    <asp:ListItem Value="3">Noida</asp:ListItem>
                    <asp:ListItem Value="5">Meerut</asp:ListItem>
                    <asp:ListItem Value="7">Delhi</asp:ListItem>
                    <asp:ListItem Value="27">Dehradun</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
        <td>
        </td>
        <td></td>
        </tr>
        <tr>
            <td style="width: 146px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit"
        Width="141px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server" Text=" " Width="275px" Font-Bold="True" Font-Names="Verdana" Font-Size="Smaller" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

