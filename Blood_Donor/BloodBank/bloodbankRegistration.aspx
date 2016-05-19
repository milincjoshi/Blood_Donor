<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bloodbankRegistration.aspx.cs" Inherits="Blood_Donor.bloodbankRegistration" %>

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
    <link href="../CSS/mainCSS.css" rel="stylesheet" />
</head>
<body class="container-fluid">
    <div class="page-header text-center">
        <h3 class="colorRed">Welcome to Blood Get</h3>
    </div>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-lg-12">
                <div class="col-lg-4 col-lg-offset-4">
                    <div class="panel panel-primary">
                        <div class="panel-heading"> Register </div>
                        <div class="panel-body">
                            <asp:TextBox CssClass="form-control marginTop2" ID="bloodbankName" runat="server" placeholder="Blood Bank Name" required/>
                            
                            <asp:TextBox CssClass="form-control marginTop2" TextMode="Email" ID="bloodbankEmail" runat="server" placeholder="Email" required/>
                            <asp:TextBox CssClass="form-control marginTop2" TextMode="Password" ID="bloodbankPassword" runat="server" placeholder="Password" required/>
                            <asp:TextBox CssClass="form-control marginTop2" TextMode="Password" ID="bloodbankConfirmPassword" runat="server" placeholder=" Confirm Password" required/>

                            <asp:TextBox CssClass="form-control marginTop2" TextMode="Number" ID="bloodbankPhone" runat="server" placeholder="Phone No" required/>
                            <asp:TextBox CssClass="form-control marginTop2" TextMode="Number" ID="bloodbankPinCode" runat="server" placeholder="Zip Code" required/>

                            <asp:Button OnClick="Register_Click" CssClass="btn btn-primary pull-right marginTop2" ID="Register" runat="server" Text="Register" />
                           
                        </div>
                    </div>

                </div>
            </div>
        </div>
    
    </form>
</body>
</html>