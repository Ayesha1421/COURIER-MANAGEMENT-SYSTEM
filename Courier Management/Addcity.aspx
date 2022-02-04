<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addcity.aspx.cs" Inherits="Addcity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table>
        <tr>
            <td>
                Enter&nbsp;City Name </td>
            <td>
                <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
            </td>
            <a href="Addcity.aspx">Addcity.aspx</a>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" style="margin-left: 41px" Width="79px" />
            </td>
        </tr>
    </table>


     

    <hr />

    <div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="433px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>


        <table>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Add " OnClick="Button2_Click" style="margin-left: 41px" Width="79px" />
            </td>
        </tr>
    </table>
</asp:Content>

