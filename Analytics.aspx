<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Analytics.aspx.cs" Inherits="Analytics" MasterPageFile="~/Site.master" %>

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
        <tr style="visibility:hidden" >
            <td>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Button" OnClick="btnSubmit_Click" />
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>

                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%;" border="0" class="BorrowerTable">

                    <tr>
                        <td colspan="4" class="LoanHeader">
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 20%">Loan for counstruction</td>
                                    <td style="width: 13%">
                                        <asp:RadioButton runat="server" ID="RadioButton4" Text="Purchase" GroupName="loan" /></td>
                                    <td style="width: 13%">
                                        <asp:RadioButton runat="server" ID="RadioButton5" Text="Renovation" GroupName="loan" /></td>
                                    <td style="width: 13%">
                                        <asp:RadioButton runat="server" ID="RadioButton6" Text="Improvement" GroupName="loan" /></td>
                                    <td style="width: 13%">
                                        <asp:RadioButton runat="server" ID="RadioButton7" Text="Takeover" GroupName="loan" /></td>
                                    <td style="width: 13%">
                                        <asp:RadioButton runat="server" ID="RadioButton8" Text="Plot" GroupName="loan" /></td>
                                    <td style="width: 13%">
                                        <asp:RadioButton runat="server" ID="RadioButton9" Text="Mortgage" GroupName="loan" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="BorrowerDetails">Borrower's Detail
                        </td>
                    </tr>
                    <tr>
                        <td class="td1" style="width: 20%">First Name
                        </td>
                        <td class="td2" style="width: 30%"><asp:TextBox ID="txtFirstName" runat="server" CssClass="text" Width="200px" ></asp:TextBox></td>
                        <td class="td1" style="width: 20%">Last Name
                        </td>
                        <td class="td2" style="width: 30%"><asp:TextBox ID="txtLastName" runat="server" CssClass="text" Width="200px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="td1">Date of Birth
                        </td>
                        <td class="td2"><asp:TextBox ID="TextBox12" runat="server" CssClass="text"></asp:TextBox></td>
                        <td class="td1">Age
                        </td>
                        <td class="td2"><asp:TextBox ID="TextBox13" runat="server" CssClass="text" Width="50px" ></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="td1">Marital Status
                        </td>
                        <td class="td2" colspan="3">
                            <table style="width: 50%" border="0">
                                <tr>
                                    <td>
                                        <asp:RadioButton runat="server" ID="rdoMStatusSinle" Text="Single" GroupName="MStatus" />
                                    </td>
                                    <td>
                                        <asp:RadioButton runat="server" ID="rdoMStatusMarried" Text="Married" GroupName="MStatus" />
                                    </td>
                                    <td>
                                        <asp:RadioButton runat="server" ID="rdoMStatusOther" Text="Other" GroupName="MStatus" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">Current Residential Address
                        </td>
                        <td class="td2" colspan="3">
                            <table style="width: 40%" border="0">
                                <tr>
                                    <td colspan="4">
                                        <asp:TextBox ID="txtCurrAddress" Width="150px" Rows="5" TextMode="MultiLine" runat="server" CssClass="text"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton runat="server" ID="rdoowned" Text="Owned" GroupName="curraddress"  />
                                    </td>
                                    <td>
                                        <asp:RadioButton runat="server" ID="rdocmpprovided" Text="Company Provided" GroupName="curraddress" />
                                    </td>
                                
                                    <td>
                                        <asp:RadioButton runat="server" ID="rdorented" Text="Rented" GroupName="curraddress" />
                                    </td>
                                    <td>
                                        <asp:RadioButton runat="server" ID="rdofamilyother" Text="Family/Other" GroupName="curraddress" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">Pin #
                        </td>
                        <td class="td2" colspan="3">
                            <asp:TextBox ID="txtCurAddPin" Width="50px" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">Phone Number
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                        <td class="td1">Mobile Number
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="text"></asp:TextBox>
                        </td>                       
                    </tr>
                     <tr>
                        <td class="td1">Email 
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox15" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                        <td class="td1">Twitter ID
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox16" runat="server" CssClass="text"></asp:TextBox>
                        </td>                       
                    </tr>
                    <tr>
                        <td class="td1">Communication Address
                        </td>
                        <td class="td2" colspan="3">
                            <table style="width: 50%; font-weight: normal" border="0">
                                <tr>
                                    <td>
                                        <asp:RadioButton runat="server" ID="RadioButton1" Text="Property Address" GroupName="CommAddress" />
                                    </td>
                                    <td>
                                        <asp:RadioButton runat="server" ID="RadioButton2" Text="Current Residential Address" GroupName="CommAddress" />
                                    </td>
                                    <td>
                                        <asp:RadioButton runat="server" ID="RadioButton3" Text="Office Address" GroupName="CommAddress" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">No. of dependents children
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                        <td class="td1">No. of dependents other
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                    </tr>
                      <tr>
                        <td class="td1">Qualification
                        </td>
                        <td class="td2" colspan="3">
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                                    <asp:ListItem Value="0">Please Select</asp:ListItem>
                                <asp:ListItem Value="1">Graduate</asp:ListItem>
                                <asp:ListItem Value="2">Post-Graduate</asp:ListItem>
                                <asp:ListItem Value="3">Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td class="td1">Occupation
                        </td>
                        <td class="td2" colspan="3">
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
                                    <asp:ListItem Value="0">Please Select</asp:ListItem>
                                <asp:ListItem Value="1">Employed</asp:ListItem>
                                <asp:ListItem Value="2">Professional</asp:ListItem>
                                <asp:ListItem Value="3">Business</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                     <tr>
                        <td class="td1">Name of Employer
                        </td>
                        <td class="td2" colspan="3">
                            <asp:TextBox ID="TextBox14" runat="server" CssClass="text" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="td1">Office Address
                        </td>
                        <td class="td2" colspan="3">
                            <asp:TextBox ID="TextBox2" Width="150px" Rows="5" TextMode="MultiLine" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                    </tr>
                     <tr>
                        <td class="td1">Phone Number
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                        <td class="td1">Fax Number
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="text"></asp:TextBox>
                        </td>                        
                    </tr>
                    <tr>
                        <td class="td1">Designation
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                        <td class="td1">Department
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="td1">No. of years in present service
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                        <td class="td1">Month
                        </td>
                        <td class="td2">
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td class="td1">Years to retirement
                        </td>
                        <td class="td2" colspan="3">
                            <asp:TextBox ID="TextBox10" Width="50px" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">Total work experiance
                        </td>
                        <td class="td2" colspan="3">
                            <asp:TextBox ID="TextBox11" Width="50px" runat="server" CssClass="text"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                          <td class="btnPanel" colspan="6" style="text-align:center">
                            <table style="width:100%;text-align:center" border="0">
                                <tr>
                                    <td  style="width:50%;text-align:right">
                                        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Submit" OnClick="Button1_Click" />
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
