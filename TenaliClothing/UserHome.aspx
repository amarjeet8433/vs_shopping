﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Welcome !</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toogle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img src="Images/tc only 512.png" alt="Logo" height="30" /></span>TenaliClothing</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="About.aspx">About</a></li>
                            <li><a href="Contact.aspx">Contact</a></li>
                            <li><a href="Products.aspx">Products</a></li>
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    Cart <span class="badge" id="pCount" runat="server"></span>
                                </button>
                            </li>
                            <li>
                                <asp:Button ID="btnSignIn" runat="server" Class="btn btn-default navbar-btn" Text="Sign In" OnClick="btnSignIn_Click" />
                                <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign Out" OnClick="btnSignOut_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <asp:Label ID="lblSuccess" runat="server" CssClass="text-success"></asp:Label>
    </form>
    <!-- Footer -->
    <hr />
    <footer>
        <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; 2018 TenaliClothing &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="Products.aspx">Products</a></p>
        </div>
    </footer>
    <!-- Footer -->

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
