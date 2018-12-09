﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding-top: 50px">
        <div class="col-md-5">
            <div style="max-width: 480px" class="thumbnail">
                <!-- Carousel -->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <asp:Repeater ID="rptrImages" runat="server">
                            <ItemTemplate>
                                <div class="item <%# GetActiveClass(Container.ItemIndex) %>">
                                    <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='Images/noimage.jpg'" />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
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
        </div>

        <div class="col-md-7">
            <asp:Repeater ID="rptrProductDetails" OnItemDataBound="rptrProductDetails_ItemDataBound" runat="server">
                <ItemTemplate>
                    <div class="divDet1">
                        <h1 class="proNameView"><%#Eval("PName") %></h1>
                        <span style="color:darkgray" class="proOgPriceView">₹<%#Eval("PPrice","{0:0,00}") %></span><span class="proPriceDiscountView"> ₹<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %> Off</span>
                        <p style="color:white" class="proPriceView">₹<%#Eval("PSelPrice","{0:0,00}") %></p>
                    </div>
                    <div>
                        <h5 style="color:white" class="h5Size">SIZE</h5>
                        <div style="color:darkgray">
                            <asp:RadioButtonList ID="rblSize" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="divDet1">
                        <asp:Button ID="btnAddToCart" OnClick="btnAddToCart_Click" CssClass="mainButton" runat="server" Text="ADD TO CART" />
                        <asp:Label ID="lblError" runat="server" style="color:white"></asp:Label>
                    </div>
                    <div>
                        <h5 style="color:white" class="h5Size">DESCRIPTION</h5>
                        <p style="color:wheat">
                            <%#Eval("PDescription") %>
                        </p>
                    </div>
                    <div>
                        <h5 style="color:white" class="h5Size">PRODUCT DETAILS</h5>
                        <p style="color:wheat">
                            <%#Eval("PProductDetails") %>
                        </p>
                    </div>
                    <div class="divDet1">
                        <h5 style="color:white" class="h5Size">MATERIAL & CARE</h5>
                        <p style="color:wheat">
                            <%#Eval("PMaterialCare") %>
                        </p>
                    </div>
                    <div>
                        <p style="color:wheat"><%# ((int)Eval("FreeDelivery")==1)?"Free Delivery":"" %></p>
                        <p style="color:wheat"><%# ((int)Eval("30DayRet")==1)?"30 Days Returns":"" %></p>
                    </div>

                    <asp:HiddenField ID="hfCatID" Value='<%# Eval("PCategoryID") %>' runat="server" />
                    <asp:HiddenField ID="hfSubCatID" Value='<%# Eval("PSubCatID") %>' runat="server" />
                    <asp:HiddenField ID="hfGenderID" Value='<%# Eval("PGender") %>' runat="server" />
                    <asp:HiddenField ID="hfBrandID" Value='<%# Eval("PBrandID") %>' runat="server" />

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

