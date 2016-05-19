<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Blood_Donor.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blood Donor</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <link href="mainCSS.css" rel="stylesheet" />
</head>
<body class="container-fluid">
    <div class="page-header text-center">
        <h3 class="colorRed">Results</h3>
    </div>
    <form id="form1" runat="server">
    <div class="row">
        <div class="col-lg-12">
            <div class="col-lg-4 text-center">
                <asp:RadioButton CssClass="col-lg-12" GroupName="BloodGroup" ID="R1" runat="server" Text="A+" />
                <asp:RadioButton CssClass="col-lg-12"  GroupName="BloodGroup" ID="R2" runat="server" Text="A-" />
                <asp:RadioButton CssClass="col-lg-12"  GroupName="BloodGroup" ID="R3" runat="server" Text="B+" />
                <asp:RadioButton CssClass="col-lg-12"  GroupName="BloodGroup" ID="R4" runat="server" Text="B-" />
                <asp:RadioButton CssClass="col-lg-12"  GroupName="BloodGroup" ID="R5" runat="server" Text="AB+" />
                <asp:RadioButton CssClass="col-lg-12"  GroupName="BloodGroup" ID="R6" runat="server" Text="AB-" />
                <asp:RadioButton CssClass="col-lg-12"  GroupName="BloodGroup" ID="R7" runat="server" Text="O+" />
                <asp:RadioButton CssClass="col-lg-12"  GroupName="BloodGroup" ID="R8" runat="server" Text="O-" />
            </div>
            <div class="col-lg-8">
                <asp:DataList ID="result_list" runat="server">
                    <ItemTemplate>
                        <div style="border:solid 1px black;" class="col-lg-12 marginTop2 padding2">
                            <!--First Name-->
                            <div class="col-lg-4"><%# Eval("userFirstName") %></div>
                            <!--Last Name-->
                            <div class="col-lg-8"><%# Eval("userLastName") %></div>
                            <!--Phone no-->
                            <div class="col-lg-12"><b><%# Eval("userPhone") %></b></div>
                            <!--Email-->
                            <div class="col-lg-12"><%# Eval("userEmail") %></div>
                            <!--Zip Code-->
                            <div class="col-lg-12"><%# Eval("userPinCode") %></div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>          
        </div>
    
    </div>
    </form>
</body>
</html>
