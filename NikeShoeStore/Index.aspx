<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="NikeShoeStore.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <aside id="colorlib-hero">
                <div class="flexslider">
                    <ul class="slides">
                        <li style="background-image: url(images/banner.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-sm-6 offset-sm-3 text-center slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1">Men's</h1>
                                                <h2 class="head-2">Shoes</h2>
                                                <h2 class="head-3">Collection</h2>
                                                <p class="category"><span>New trending shoes</span></p>
                                                <p><a href="products.aspx" class="btn btn-primary">Shop Collection</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(images/banner-2.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-sm-6 offset-sm-3 text-center slider-text">
                                        <div class="slider-text-inner">
                                            <div class="desc">
                                                <h1 class="head-1">Huge</h1>
                                                <h2 class="head-2">Sale</h2>
                                                <h2 class="head-3"><strong class="font-weight-bold">50%</strong> Off</h2>
                                                <p class="category"><span>Big sale sandals</span></p>
                                                <p><a href="products.aspx" class="btn btn-primary">Shop Collection</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </aside>
            <div class="colorlib-product">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 text-center">
                            <div class="featured">
                                <a href="products.aspx?category=1" class="featured-img" style="background-image: url(images/men.jpg);"></a>
                                <div class="desc">
                                    <h2><a href="products.aspx?category=1">Shop Men's Collection</a></h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 text-center">
                            <div class="featured">
                                <a href="products.aspx?category=2" class="featured-img" style="background-image: url(images/women.jpg);"></a>
                                <div class="desc">
                                    <h2><a href="products.aspx?category=2">Shop Women's Collection</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="colorlib-product">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
                            <h2>Best Sellers</h2>
                        </div>
                    </div>
                    <div class="row row-pb-md">
                        <asp:Repeater ID="rptProduct" runat="server">
                            <ItemTemplate>
                                <div class="col-lg-3 mb-4 text-center">
                            <div class="product-entry border">
                                <a href="productDetails.aspx?id=<%#Eval("Id") %>" class="prod-img">
                                    <img src='<%#Eval("Image") %>' class="img-fluid" alt="Free html5 bootstrap 4 template">
                                </a>
                                &nbsp;<div class="desc">
                                    <h2><a href="productDetails.aspx?id=<%#Eval("Id") %>"><%#Eval("Name") %></a></h2>
                                    <span class="price"><%#Eval("Price", "$ {0}") %></span>
                                </div>
                            </div>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <p><a href="products.aspx" class="btn btn-primary btn-lg">Shop All Products</a></p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="colorlib-partner">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                            <h2>Trusted Partners</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col partner-col text-center">
                            <img src="images/brand-1.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                        </div>
                        <div class="col partner-col text-center">
                            <img src="images/brand-2.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                        </div>
                        <div class="col partner-col text-center">
                            <img src="images/brand-3.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                        </div>
                        <div class="col partner-col text-center">
                            <img src="images/brand-4.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                        </div>
                        <div class="col partner-col text-center">
                            <img src="images/brand-5.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>
