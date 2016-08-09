<%@ Page Title="Update Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="ClerkSite.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 class="form-signin-heading">Update Product</h2>
        <br />  
        <div class="form-group">
            <asp:RequiredFieldValidator runat="server" ControlToValidate="title" Display="Dynamic"
                ErrorMessage="Title cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <label for="title" class="col-sm-2 control-label">Title</label>
            <asp:TextBox ID="title" runat="server" CssClass="form-control" ></asp:TextBox>    
        </div>
        <div class="form-group">
             <asp:RequiredFieldValidator runat="server" ControlToValidate="cate_list" Display="Dynamic" 
                ErrorMessage="Category ID cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <label for="cate_list" class="col-sm-2 control-label">Category ID</label>
            <asp:DropDownList ID="cate_list" runat="server" CssClass="form-control" Style="width: 280px;"></asp:DropDownList>
        </div> 
        <div class="form-group">
            <asp:RequiredFieldValidator runat="server" ControlToValidate="shortD" Display="Dynamic" 
                ErrorMessage="Short Description cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <label for="shortD" class="col-sm-2 control-label">Short Description</label>
            <asp:TextBox ID="shortD" runat="server" CssClass="form-control"></asp:TextBox>        
        </div>          
        <div class="form-group">
            <asp:RequiredFieldValidator runat="server" ControlToValidate="longD" Display="Dynamic" 
                ErrorMessage="Long Description cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <label for="longD" class="col-sm-2 control-label">Long Description</label>
            <asp:TextBox ID="longD" runat="server" CssClass="form-control"></asp:TextBox>        
        </div>          
        <div class="form-group">
            <label for="imageurl" class="col-sm-2 control-label">Image URL</label>
            <asp:TextBox ID="imagerurl" runat="server" CssClass="form-control"></asp:TextBox>        
        </div>
        <div class="form-group">
            <asp:RequiredFieldValidator runat="server" ControlToValidate="price" Display="Dynamic" 
                ErrorMessage="Price cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ControlToValidate="price" Display="Dynamic"
                ErrorMessage="Price must be a number" ValidationExpression="^[0-9]+$" ForeColor="Red"></asp:RegularExpressionValidator>    
            <label for="price" class="col-sm-2 control-label">Price</label>
            <asp:TextBox ID="price" runat="server" CssClass="form-control"></asp:TextBox>        
        </div>        
        <div class="form-group">
            <div class="col-sm-offset-2">
                <asp:Button ID="Edit" runat="server" Text="Edit" CssClass="btn btn-lg btn-info" OnClick="Edit_Click" />
            </div>                            
        </div>         
    </div>
</asp:Content>
