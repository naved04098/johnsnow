<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ARYA.aspx.cs" Inherits="ARYA"  MasterPageFile="~/Site.master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td class="PageHeadBanner">
                <table style="width: 100%">
                    <tr>
                        <td style="padding-left: 5px; width: 1%">
                            <img src="Content/Images/speechballoon.png" />
                        </td>
                        <td style="text-align: left; width: 98%; padding-left: 10px;">ARYA
                        </td>
                        <td style="padding-left: 5px; width: 1%">
                            <a href="Home.aspx">
                                <img src="Content/Images/back-arrow.png" title="Click here for Home" />
                            </a>
                        </td>
                    </tr>

                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%;" border="0" class="BorrowerTable">
                    <tr>
                        <td>
                            <table style="width: 100%;" class="AnalyticsResultYellow">
                                <tr>
                                    <td style="width:20%" class="td1">
                                        Loan Number
                                    </td>
                                    <td style="width:80%" class="td2">
                                         <asp:TextBox ID="txtLoanNumber" runat="server" CssClass="text"></asp:TextBox>
                                    </td>
                                  
                                </tr>
                                  <tr>
                                      <td class="btnPanel" colspan="2" style="text-align:center">
                                         <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Submit"/> 
                                      </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Content>