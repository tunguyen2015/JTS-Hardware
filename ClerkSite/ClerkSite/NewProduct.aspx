<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewProduct.aspx.cs" Inherits="ClerkSite.NewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="form-signin-heading">New Product</h2><br />
    <div class="form-group">
        <asp:RequiredFieldValidator runat="server" ControlToValidate="prod_title" Display="Dynamic" 
            ErrorMessage="Title cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="prod_title" runat="server" CssClass="form-control" PlaceHolder="Title"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:RequiredFieldValidator runat="server" ControlToValidate="category_list" Display="Dynamic"
            ErrorMessage="Category ID cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>        
        <asp:DropDownList ID="category_list" runat="server" CssClass="form-control" Style="width: 280px;"></asp:DropDownList>
    </div>

    <div class="form-group">        
        <asp:RequiredFieldValidator runat="server" ControlToValidate="shortD" Display="Dynamic"
            ErrorMessage="Short Description cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="shortD" runat="server" CssClass="form-control" PlaceHolder="Short Description"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:RequiredFieldValidator runat="server" ControlToValidate="longD" Display="Dynamic"
            ErrorMessage="Long Description cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="longD" runat="server" CssClass="form-control" PlaceHolder="Long Description"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:TextBox ID="image" runat="server" CssClass="form-control" PlaceHolder="Image URL"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:RequiredFieldValidator runat="server" ControlToValidate="price" Display="Dynamic"
            ErrorMessage="Price cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="price" Display="Dynamic"
            ErrorMessage="Price must be a number" ValidationExpression="^[0-9]+$" ForeColor="Red"></asp:RegularExpressionValidator>    
        <asp:TextBox ID="price" runat="server" CssClass="form-control" PlaceHolder="Price"></asp:TextBox>
    </div>   
     
    <div class="form-group">                    
        <asp:Button ID="Add_Prod" runat="server" Text="Add Product" CssClass="btn btn-lg btn-info" OnClick="Add_Prod_Click"/>
    </div> 
</asp:Content>
