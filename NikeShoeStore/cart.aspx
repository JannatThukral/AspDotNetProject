<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="NikeShoeStore.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="bread"><span><a href="index.aspx">Home</a></span> / <span>Shopping Cart</span></p>
                </div>
            </div>
        </div>
    </div>
    <div class="colorlib-product">
        <div class="container">
            <div class="row row-pb-lg">
                <div class="col-md-10 offset-md-1">
                    <div class="process-wrap">
                        <div class="process text-center active">
                            <p><span>01</span></p>
                            <h3>Shopping Cart</h3>
                        </div>
                        <div class="process text-center">
                            <p><span>02</span></p>
                            <h3>Checkout</h3>
                        </div>
                        <div class="process text-center">
                            <p><span>03</span></p>
                            <h3>Order Complete</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-pb-lg">
                <div class="col-md-12">
                    <asp:ListBox ID="cartList" Rows="5" runat="server" CssClass="form-control" />
                </div>
            </div>
            <h3><asp:Label ID="lblMessage" CssClass="text-danger" runat="server" /></h3>
            <div class="row row-pb-lg">
                <div class="col-md-3">
                    <asp:Button ID="ContinueShoppingBtn" OnClick="ContinueShoppingBtn_Click" Text="Continue Shopping" CssClass="btn btn-primary" runat="server" />
                </div>
                <div class="col-md-3">
                    <asp:Button ID="CheckoutBtn" OnClick="CheckoutBtn_Click" Text="Checkout" CssClass="btn btn-primary" runat="server" />
                </div>
                <div class="col-md-3">
                    <asp:Button ID="RemoveItemBtn" OnClick="RemoveItemBtn_Click" Text="Remove Item from Cart" CssClass="btn btn-outline-danger" runat="server" />
                </div>
                <div class="col-md-3">
                    <asp:Button ID="EmptyCartBtn" OnClick="EmptyCartBtn_Click" Text="Empty Cart" CssClass="btn btn-danger" runat="server" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
