<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Blood_Donor.index" %>

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
    <link href="CSS/mainCSS.css" rel="stylesheet" />
</head>
<body class="container-fluid">

<!--navbar-->
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Blood Get</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="User/User_Login.aspx">User</a></li>
        <li><a href="BloodBank/BloodBank_Login.aspx">Blood Bank</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    <!--End Navbar-->
    <div class="page-header text-center">
        <h3 class="colorRed">Blood Get</h3>
        <h5 class="col-lg-12">
            <span style="border:solid 1px black;padding:.5%;" >
                Caution :- This site is not responsible for any kind of Blood Diseases or sickness spread through donating or receiving Blood from other donors.
            </span>
        </h5>
    </div>
    <form id="form1" runat="server">
    <div style="margin-top:5%;" class="row">
        <div class="col-lg-12">
            <div class="col-lg-7 col-lg-offset-2">
                <div class="col-lg-12 marginTop2">
                    <asp:Button OnClick="aPositive_Click" CssClass="col-lg-4 col-lg-offset-2 btn btn-danger" ID="aPositive" runat="server" Text="A+" />
                    <asp:Button OnClick="aNegative_Click" CssClass="col-lg-4 col-lg-offset-2 btn btn-danger" ID="aNegative" runat="server" Text="A-" />
                </div>
            
                <div class="col-lg-12 marginTop2">
                    <asp:Button OnClick="bPositive_Click" CssClass="col-lg-4 col-lg-offset-2 btn btn-danger" ID="bPositive" runat="server" Text="B+" />
                    <asp:Button OnClick="bNegative_Click" CssClass="col-lg-4 col-lg-offset-2 btn btn-danger" ID="bNegative" runat="server" Text="B-" />
                </div>
        
                <div class="col-lg-12 marginTop2">
                    <asp:Button OnClick="abPositive_Click" CssClass="col-lg-4 col-lg-offset-2 btn btn-danger" ID="abPositive" runat="server" Text="AB+" />
                    <asp:Button OnClick="abNegative_Click" CssClass="col-lg-4 col-lg-offset-2 btn btn-danger" ID="abNegative" runat="server" Text="AB-" />
                </div>
            
                <div class="col-lg-12 marginTop2">
                    <asp:Button OnClick="oPositive_Click" CssClass="col-lg-4 col-lg-offset-2 btn btn-danger" ID="oPositive" runat="server" Text="O+" />
                    <asp:Button OnClick="oNegative_Click" CssClass="col-lg-4 col-lg-offset-2 btn btn-danger" ID="oNegative" runat="server" Text="O-" />
                </div>
                <div class="col-lg-12 marginTop2">
                    <asp:Button ID="register" runat="server" CssClass="btn btn-primary col-lg-10 col-lg-offset-2 padding2" OnClick="register_Click" Text="Donor Registration" />
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
