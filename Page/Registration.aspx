<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Training001.Page.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link rel="stylesheet" href="../Style/Main.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            function RegistrationDaysBuild() {
                alert('boo');
            }
            function RegistrationMessage() {
                //alert('boo');
                var FirstName = document.getElementById('txtRegistrationFirstName').value;
                alert('You selected ' + FirstName);
            }
        </script>
        <div>
            <table border="1">
                <tr>
                    <td colspan="99">
                        <asp:Label runat="server" CssClass="HeadingLabel" Text="Dynamic Desk - Registration Page"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="DataCaptureLabel" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRegistrationFirstName" runat="server" ClientIDMode="Static" CssClass="DataLabel"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label runat="server" CssClass="DataCaptureLabel" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRegistrationLastName" runat="server" ClientIDMode="Static" CssClass="DataLabel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" CssClass="DataCaptureLabel" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton runat="server" CssClass="DataCaptureValue" GroupName="gender" Text="Male" />
                        <asp:RadioButton runat="server" CssClass="DataCaptureValue" GroupName="gender" Text="Female" />
                        <asp:RadioButton runat="server" CssClass="DataCaptureValue" GroupName="gender" Text="Other" />
                        <asp:RadioButton runat="server" CssClass="DataCaptureValue" GroupName="gender" Text="Prefer Not To Disclose" />
                    </td>
                    <td>
                        <asp:Label runat="server" CssClass="DataCaptureLabel" Text="">Date Of Birth</asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlRegistrationDay" runat="server" CssClass="DataCaptureValue" DataValueField="DayNumber" DataTextField="Day">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlRegistrationMonth" runat="server" CssClass="DataCaptureValue" OnChange="RegistrationDaysBuild();" DataValueField="MonthNumber" DataTextField="Month">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlRegistrationYear" runat="server" CssClass="DataCaptureValue" DataValueField="YearNumber" DataTextField="Year">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="DataCaptureLabel">
                        <asp:Label runat="server" CssClass="DataCaptureLabel" Text="Comments"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" TextMode="MultiLine" Rows="5" Columns="40"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnMessage" runat="server" Text="Show Me What I Selected" OnClientClick="RegistrationMessage();" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
