<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchByBooking.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="SearchByBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

                                <table style="width: 100%">
                                    <tr>
                                        <td colspan="2">
                                            <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">&nbsp;</span></strong></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <strong><span style="font-size: 8pt; color: #0033cc; font-family: Verdana">Enquire Booking
                                                Status by Booking No</span></strong></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Select Booking No</span></td>
                                        <td style="width: 100px">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="width: 109px">
                                                        <asp:DropDownList ID="cboBookingNo" runat="server" Width="143px" >
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td style="width: 83px">
                                                        <asp:Button ID="btnSearch" runat="server" Text="Search >>" Width="100px" OnClick="btnSearch_Click" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Booking No</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblBookingNo" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px; height: 21px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Item </span></td>
                                        <td style="width: 100px; height: 21px">
                                            <asp:Label ID="lblContainterNo" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                      <tr>
                                        <td >
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Weight </span></td>
                                        <td style="width: 100px; height: 21px">
                                            <asp:Label ID="lblweight" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana" id="Sender ">Sender From </span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblSender" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Recieved From</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblRecieved" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Type</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblType" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Expected Recieving Date</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblrvdate" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Origin</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblorigin" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana">Destination</span></td>
                                        <td style="width: 100px">
                                            <asp:Label ID="lblDestination" runat="server" Text=" " Width="207px"></asp:Label></td>
                                    </tr>
                                   
                                    <tr>
                                        <td style="width: 129px">
                                            <span style="font-size: 9pt; color: #4d6064; font-family: Verdana"></span>
                                        </td>
                                        <td style="width: 100px">
                                        </td>
                                    </tr>
                                </table>
                      
              
        
            
        
    </asp:Content>

