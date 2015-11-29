<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <%--   <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
    </div>--%>

   <%-- <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>
    <table style="width:100%;" border="0" >
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 8%;">
            </td>
            <td style="width: 22%;">
                <table style="width:100%;" border="0">
                    <tr>
                        <td class="AnlyticsCircle" style="vertical-align:central">
                           <table border="0" style="width:100%;">
                               <tr>
                                   <td style="padding-left:50px;" >
                                       <a href="Analytics.aspx">
                                            <img src="Content/Images/Microscope.png"/>
                                       </a>
                                   </td>
                               </tr>
                               <tr>
                        <td style="padding-left:90px;" class="HomeMenu" >
                            Analytics</td>
                    </tr>
                           </table>
                        </td>
                    </tr>
                    
                </table>
            </td>
            <td style="width: 8%;">
            </td>
            <td style="width: 22%;">
                <table style="width:100%;" border="0">
                    <tr>
                        <td class="AryaCircle" style="vertical-align:central">
                           <table border="0" style="width:100%;">
                               <tr>
                                   <td style="padding-left:60px;" >
                                       <a href="ARYA.aspx">
                                            <img src="Content/Images/microphone.png"/>
                                       </a>
                                   </td>
                               </tr>
                               <tr>
                        <td style="padding-left:100px;padding-right:50px;" class="HomeMenu" >
                            ARYA</td>
                    </tr>
                           </table>
                        </td>
                    </tr>
                    
                </table>
            </td>
            <td style="width: 8%;">
            </td>
            <td style="width: 22%;">
                <table style="width:100%;" border="0">
                    <tr>
                        <td class="ReportsCircle" style="vertical-align:central">
                           <table border="0" style="width:100%;">
                               <tr>
                                   <td style="padding-left:75px;" >
                                       <a href="Reports.aspx">
                                            <img src="Content/Images/gnom.png"/>
                                       </a>
                                   </td>
                               </tr>
                               <tr>
                        <td style="padding-left:100px;padding-right:50px;" class="HomeMenu" >
                            Reports</td>
                    </tr>
                           </table>
                        </td>
                    </tr>
                    
                </table>
            </td>
            <td style="width: 10%;">
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
