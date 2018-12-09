<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
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
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="About.aspx">About</a></li>
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

            <!-- Carousel -->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="Images/Banner1.jpg" alt="..." />
                        <div class="carousel-caption">
                            <h3>Highlander</h3>
                            <p>The New Highlander Brand</p>
                            <p><a class="btn btn-lg btn-primary" href="SignUp.aspx" role="button">Join Us Today</a></p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/Banner2.jpg" alt="..." />
                        <div class="carousel-caption">
                            <h3 style="color: black">Mesh</h3>
                            <p style="color: black">So Beautiful...</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="Images/Banner3.jpg" alt="..." />
                        <div class="carousel-caption">
                            <h3>Addidas</h3>
                            <p>Run for it..</p>
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!-- Carousel -->

        </div>

        <!-- Middle Contents -->
        <br />
        <br />
        <br />
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb1.jpg" alt="thumb01" width="140" height="140" />
                    <h2 style="color: white">Women</h2>
                    <p style="color: gray">A women is always beautiful but our clothing style can make them more beautiful.</p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb02.jpg" alt="thumb02" width="140" height="140" />
                    <h2 style="color: white">Men</h2>
                    <p style="color: gray">A man is known by it's clothing style and here we take care of that.</p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb03.jpg" alt="thumb03" width="140" height="140" />
                    <h2 style="color: white">FootWear</h2>
                    <p style="color: gray">A pair of Shoes decides where your journey will take you, so why not buy the best one. You need it, We have it.</p>
                </div>
            </div>
        </div>
        <!-- Middle Contents -->

        <!-- Footer -->
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p style="color: white">&copy; 2018 TenaliClothing &middot; <a href="Default.aspx">Home</a> &middot; <a href="About.aspx">About</a> &middot; <a href="Contact.aspx">Contact</a> &middot; <a href="Products.aspx">Products</a></p>
            </div>
        </footer>
        <!-- Footer -->

    </form>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
