<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="NikeShoeStore.products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="colorlib-product">
        <div class="container">
            <div class="row row-pb-md">
                <asp:Repeater ID="rptProduct" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 mb-4 text-center">
                            <div class="product-entry border">
                                <a href="productDetails.aspx?id=<%#Eval("Id") %>" class="prod-img">
                                    <img src='<%#Eval("Image") %>' class="img-fluid" alt="Free html5 bootstrap 4 template">
                                </a>
                                <div class="desc">
                                    <h2><a href="productDetails.aspx?id=<%#Eval("Id") %>"><%#Eval("Name") %></a></h2>
                                    <span class="price"><%#Eval("Price", "$ {0}") %></span>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
