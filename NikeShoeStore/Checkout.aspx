<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="NikeShoeStore.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="bread"><span><a href="index.aspx">Home</a></span> / <span>Checkout</span></p>
                </div>
            </div>
        </div>
    </div>
    <div class="colorlib-product">
        <div class="container">
            <div class="row row-pb-lg">
                <div class="col-sm-10 offset-md-1">
                    <div class="process-wrap">
                        <div class="process text-center active">
                            <p><span>01</span></p>
                            <h3>Shopping Cart</h3>
                        </div>
                        <div class="process text-center active">
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
            <div class="row">
                <div class="col-lg-12 colorlib-form">
                    <h2>Billing Details</h2>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="fname">First Name</label>
                                    <asp:TextBox ID="txtFName" required runat="server" class="form-control" placeholder="Your firstname" />
                                    
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lname">Last Name</label>
                                   <asp:TextBox ID="txtLName" required runat="server" class="form-control" placeholder="Your lastname" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">E-mail Address</label>
                                    <asp:TextBox ID="txtEmail" TextMode="Email" required runat="server" class="form-control" placeholder="Your email" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Phone">Phone Number</label>
                                    <asp:TextBox ID="txtPhone" TextMode="Number" required runat="server" class="form-control" placeholder="Your phone" />
                               
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="fname">Address</label>
                                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" required runat="server" class="form-control" placeholder="Your address" />
                               
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="fname">Name on Card</label>
                                    <asp:TextBox ID="txtCardName" required runat="server" class="form-control" placeholder="Your name on card" />
                               
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lname">Card Number</label>
                                    <asp:TextBox ID="txtCardNumber" TextMode="Number" required runat="server" class="form-control" placeholder="Your card number" />
                               
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">Expiry Date</label>
                                    <asp:TextBox ID="txtExpiry"  required runat="server" class="form-control" placeholder="Card expiry MM/YY" />
                               
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Phone">CVV</label>
                                    <asp:TextBox ID="txtCVV" TextMode="Number" required runat="server" class="form-control" placeholder="Your CVV" />
                               
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4"></div>
                                <div class="col-lg-4"></div>
                                <div class="col-lg-4">
                                    <asp:Button ID="checkoutBtn" OnClick="checkoutBtn_Click" runat="server" Text="Place an order" CssClass="btn btn-primary" />
                                </div>
                            </div>
                        </div>
                </div>

               
            </div>
        </div>
    </div>
</asp:Content>
