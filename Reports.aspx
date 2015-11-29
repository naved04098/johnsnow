<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports"  MasterPageFile="~/Site.Master" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td class="PageHeadBanner">
                <table style="width: 100%">
                    <tr>
                        <td style="padding-left: 5px; width: 1%">
                            <img src="Content/Images/Report-Dollar.png" />
                        </td>
                        <td style="text-align: left; width: 98%; padding-left: 10px;">REPORT'S
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
                            <table style="width:100%" class="BorrowerDetails">
                                    <tr>
                                        <td>
                                            Get All Borrower Information
                                        </td>
                                    </tr>
                            </table>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="AnalyticsResultYellow">
                            <table>
                                <tr>
                                    <td>
                                        Filter 1
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Filter 2
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                       <asp:Button ID="btnSubmit" runat="server" CssClass="btn" Text="Sublit" OnClick="btnSubmit_Click"  />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr id="loadGridview">
                        <td>
                            <asp:GridView ID="reportDataGrid" runat="server" AutoGenerateColumns="true" CssClass="mydatagrid" HeaderStyle-CssClass="header" RowStyle-CssClass="rows">
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                                     
                        </td>
                       

                    </tr>

                </table>
            </td>
        </tr>
    </table>
</asp:Content>
