﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>ContactUs</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Actor" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alfa+Slab+One" rel="stylesheet">
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
<body style="background-image: url('/Images/bkgdContact.jpg')">
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
                        <a class="navbar-brand" href="index.aspx"><span>
                            <img src="Images/tc only 512.png" alt="Logo" height="30" /></span>TenaliClothing</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="index.aspx">Home</a></li>
                            <li><a href="About.aspx">About</a></li>
                            <li class="active"><a href="Contact.aspx">Contact</a></li>
                            <li><a href="Products.aspx">Products</a></li>
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    Cart <span class="badge" id="pCount" runat="server"></span>
                                </button>
                            </li>
                            <li id="btnSignUp" runat="server"><a href="SignUp.aspx">Sign Up</a></li>
                            <li id="btnSignIn" runat="server"><a href="SignIn.aspx">Sign In</a></li>
                            <li>
                                <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign Out" OnClick="btnSignOut_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container1">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <aside class="asideLeft">
                <h1 style="font-family: 'Alfa Slab One', cursive; font-size: 8em; line-height: 1em; height: 0em; text-align: center;">Contact Us</h1>
            </aside>
            <section class="sectionRight1">
                <div style="padding-top: 20px">
                    <div class="col-md-6">
                        <div class="form-horizontal">
                            <h3 style="color: black">Feedback Form</h3>
                            <hr />

                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" ForeColor="black" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                                <div class="col-md-11">
                                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" ForeColor="black" CssClass="col-md-2 control-label" Text="Feedback"></asp:Label>
                                <div class="col-md-11">
                                    <asp:TextBox ID="txtFeedback" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorFeedback" CssClass="text-danger" runat="server" ErrorMessage="This field is required !" ControlToValidate="txtFeedback"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-6">
                                    <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" CssClass="btn btn-success" />
                                    <div>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5"  style="border-left: 1px solid white;">
                        <div>
                            <h3 style="color: black">Contact Info</h3>
                            <hr />
                        </div>
                        <div class="col-lg-12">
                            <h4>
                                101, Prime Plaza, Swami Vivekanand Road, Navyug Colony, Santacruz West, Mumbai, Maharashtra 400054.
                                <br />
                                <br />
                                <br />
                                <p><b>Opens at 10:00 AM</b></p>
                                <p><b>Closes at 11:00 PM</b></p>
                                <br />
                                <br />
                                <p><b>+91 9224447089</b></p>
                            </h4>
                        </div>
                    </div>
            </section>
        </div>

        <!-- Footer -->
        <div style="padding-top: 440px">
            <hr />
            <footer>
                <div class="container">
                    <p class="pull-right"><a href="#">Back to top</a></p>
                    <p style="color: white">&copy; 2018 TenaliClothing &middot; <a href="index.aspx">Home</a> &middot; <a href="About.aspx">About</a> &middot; <a href="Contact.aspx">Contact</a> &middot; <a href="Products.aspx">Products</a></p>
                </div>
            </footer>
        </div>
        <!-- Footer -->
    </form>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
