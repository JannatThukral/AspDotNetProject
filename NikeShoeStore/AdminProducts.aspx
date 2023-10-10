<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminProducts.aspx.cs" Inherits="NikeShoeStore.AdminProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="row">
        <div class="col-lg-12">
            <asp:GridView CssClass="table tabl-responsive table-bordered" ID="grdProduct" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsProducts">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvName" runat="server" CssClass="text-danger" ControlToValidate="TextBox5" ErrorMessage="Name is required" />

                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description" SortExpression="Description">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" Rows="3" TextMode="MultiLine" CssClass="form-control" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                              <asp:RequiredFieldValidator ID="rfv2" runat="server" CssClass="text-danger" ControlToValidate="TextBox4" ErrorMessage="Description is required" />

                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CategoryId" SortExpression="CategoryId">
                        <EditItemTemplate>
                            <asp:DropDownList CssClass="form-control" Text='<%# Bind("CategoryId") %>' ID="ddlCategory" runat="server" DataSourceID="sdsCategory" DataTextField="Category" DataValueField="Id" />
            <asp:SqlDataSource ID="sdsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:dbString %>" SelectCommand="SELECT [Id], [Category] FROM [Category]"></asp:SqlDataSource>
           
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price" SortExpression="Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="Number" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfv4" runat="server" CssClass="text-danger" ControlToValidate="TextBox2" ErrorMessage="Price is required" />

                        </EditItemTemplate>
                        <ItemTemplate>
                            $<asp:Label ID="Label2" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image" >
                        <EditItemTemplate>
                            <asp:Image AlternateText='<%# Bind("Image") %>' ImageUrl='<%# Bind("Image") %>' Width="100" Height="100" ID="img" runat="server" />
                            </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image AlternateText='<%# Bind("Image") %>' ImageUrl='<%# Bind("Image") %>' Width="100" Height="100" ID="img" runat="server" />
                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sdsProducts" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbString %>" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Products] ([Name], [Description], [CategoryId], [Price], [Image]) VALUES (@Name, @Description, @CategoryId, @Price, @Image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Products.[Id], [Name], [Description], [CategoryId],Category, [Price], [Image] FROM [Products],Category where products.categoryId=category.Id" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Description] = @Description, [CategoryId] = @CategoryId, [Price] = @Price, [Image] = @Image WHERE [Id] = @original_Id AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([CategoryId] = @original_CategoryId) OR ([CategoryId] IS NULL AND @original_CategoryId IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_CategoryId" Type="Int32" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                    <asp:Parameter Name="original_Image" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="CategoryId" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="CategoryId" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_CategoryId" Type="Int32" />
                    <asp:Parameter Name="original_Price" Type="Decimal" />
                    <asp:Parameter Name="original_Image" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
