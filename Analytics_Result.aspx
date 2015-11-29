<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Analytics_Result.aspx.cs" Inherits="Analytics_Result" MasterPageFile="~/Site.master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td class="PageHeadBanner">
                <table style="width: 100%">
                    <tr>
                        <td style="padding-left: 5px; width: 1%">
                            <img src="Content/Images/line-chart.png" />
                        </td>
                        <td style="text-align: left; width: 98%; padding-left: 10px;">ANALYTICS
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
                            <table style="width: 100%;">
                                <tr>
                                    <td class="AnalyticsResultGreen" style="width: 33%;">GO</td> 
                                    <td>&nbsp;</td>                              
                                    <td class="AnalyticsResultYellow" style="width: 33%;">Tentative</td>                                
                                    <td>&nbsp;</td>                              
                                    <td class="AnalyticsResultRed" style="width: 34%;">No-GO</td>
                                    <td>&nbsp;</td>                              
                                </tr>
                             </table>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table style="width: 100%;" class="AnalyticsResultGreen">
                                    <tr>
                                        <td>
                                            Result display here...!!
                                        </td>
                                    </tr>
                                </table>
                        </td>
                    </tr>
                     <tr>
                        <td>&nbsp;</td>
                    </tr>
                     <tr>
                          <td class="btnPanel"  style="text-align:center">
                            <table style="width:100%;text-align:center" border="0">
                                <tr>
                                    <td  style="width:50%;text-align:right">
                                        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Twitter Insight" />
                                    </td>
                                    <td style="width:50%;text-align:left">
                                        <asp:Button ID="btnClose" CssClass="btn" runat="server" Text="Close" />
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
