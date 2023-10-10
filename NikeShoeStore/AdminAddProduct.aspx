<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminAddProduct.aspx.cs" Inherits="NikeShoeStore.AdminAddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row">
        <div class="col-lg-4">
            Product Name
        </div>
        <div class="col-lg-4">
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
        </div>
        <div class="col-lg-4">
            <asp:RequiredFieldValidator ID="rfvName" runat="server" CssClass="text-danger" ControlToValidate="txtName" ErrorMessage="Name is required" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-lg-4">
            Price
        </div>
        <div class="col-lg-4">
            <asp:TextBox TextMode="Number" ID="txtPrice" runat="server" CssClass="form-control" />
        </div>
        <div class="col-lg-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger" ControlToValidate="txtPrice" ErrorMessage="Price is required" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-lg-4">
            Product Category
        </div>
        <div class="col-lg-4">
            <asp:DropDownList CssClass="form-control" ID="ddlCategory" runat="server" DataSourceID="sdsCategory" DataTextField="Category" DataValueField="Id" />
            <asp:SqlDataSource ID="sdsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:dbString %>" SelectCommand="SELECT [Id], [Category] FROM [Category]"></asp:SqlDataSource>
        </div>
        <div class="col-lg-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="text-danger" ControlToValidate="ddlCategory" ErrorMessage="Category is required" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-lg-4">
            Image
        </div>
        <div class="col-lg-4">
            <asp:FileUpload ID="fudImage" CssClass="form-control" runat="server" />
        </div>
        <div class="col-lg-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="text-danger" ControlToValidate="fudImage" ErrorMessage="Image is required" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-lg-4">
            Description
        </div>
        <div class="col-lg-4">
            <asp:TextBox Rows="5" TextMode="MultiLine" ID="txtDescription" runat="server" CssClass="form-control" />
        </div>
        <div class="col-lg-4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ControlToValidate="txtDescription" ErrorMessage="Description is required" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-6">
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" CssClass="btn btn-primary" Text="Add Product" />
            <asp:LinkButton CausesValidation="false" CssClass="btn btn-outline-primary" ID="lnkBtn" runat="server" PostBackUrl="~/AdminProducts.aspx" Text="Cancel" />
        </div>
    </div>
</asp:Content>
