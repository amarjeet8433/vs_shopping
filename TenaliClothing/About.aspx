<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>AboutUs</title>
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
<body style="background-image: url('/Images/bkgdAbout.jpg'); font-family: 'Actor', sans-serif;">
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
                            <li class="active"><a href="About.aspx">About</a></li>
                            <li><a href="Contact.aspx">Contact</a></li>
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
                <h1 style="font-family: 'Alfa Slab One', cursive; font-size: 8em; line-height: 1em; height: 0em; text-align: center;">About Us</h1>
            </aside>
            <section class="sectionRight">
                <h3>For past 15 years we are handling many customers and tried to meet all the requirement they needed but we have done it all offline 
                    and so to increase our scope and to reach more customers we are taking our work online, this is the small initiative we have taken
                    and now we are trying to give all we can but the thing is we have not yet allowed online payment in our site but as the respone will 
                    increase from our customer side we will include online payment gateway too.Thanks!  
                </h3>
            </section>
        </div>

        <!-- Footer -->
        <div style="padding-top: 450px">
            <hr />
            <footer>
                <div class="container">
                    <p class="pull-right"><a href="#">Back to top</a></p>
                    <p style="color: white">&copy; 2018 TenaliClothing &middot; <a href="Default.aspx">Home</a> &middot; <a href="About.aspx">About</a> &middot; <a href="Contact.aspx">Contact</a> &middot; <a href="Products.aspx">Products</a></p>
                </div>
            </footer>
        </div>
        <!-- Footer -->

    </form>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
