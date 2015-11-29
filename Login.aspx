<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%; height: 250px;" border="0">
        <tr>
            <td style="width: 30%">&nbsp;</td>
            <td style="width: 40%">
                <table style="width: 90%" class="LoginDiv" border="0">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="padding-left:50px;width:50%" class="LoginText">User ID
                        </td>
                        <td style="width:50%">
                            <asp:TextBox ID="txtUserID" CssClass="text" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td  style="padding-left:50px"  class ="LoginText">Password
                        </td>
                        <td>
                            <asp:TextBox ID="txtPwd" CssClass="text"  runat="server"></asp:TextBox>
                        </td>
                    </tr>    
                    <tr>
                        <td colspan="2" style="text-align:center;color:red">
                            <asp:Label ID="loginError" runat="server"></asp:Label>                            
                        </td>
                    </tr>             
                    <tr>
                        <td style="text-align:center" colspan="2">
                            <table style="width:100%">
                                <tr>
                                    <td style="text-align:right">
                                        <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="Login" OnClick="btnLogin_Click" />
                                    </td>
                                    <td style="text-align:left">
                                        <asp:Button ID="btnClose" CssClass="btn" runat="server" Text="Close" OnClick="btnClose_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

            </td>
            <td style="width: 30%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
