<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="ClerkSite.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">        
    <h2 class="form-signin-heading">Category: <%= CateName.First().CategoryID %> - <%= CateName.First().Title %></h2>    
    <br/><br/>
    <table class="table table-striped table-bordered">
        <tr>
            <th>ID</th>                    
            <th>Title</th>
            <th>Short Description</th>
            <th>Long Description</th>
            <th>Image URL</th>
            <th>Price</th>            
            <th>Edit</th>
            <th>Delete</th>
        </tr>    
        <% foreach (var i in Products) { %>        
            <tr>
                <td><%= i.ProductID %></td>                        
                <td><%= i.Title %></td>
                <td><%= i.ShortDescription %></td>
                <td><%= i.LongDescription %></td>
                <td><%= i.ImageUrl %></td>
                <td><%= i.Price %></td>                
                <td><a href="EditProduct.aspx?id=<%= i.ProductID %>">Edit</a></td>
                <td><a href="ProductList.aspx?id=<%= i.ProductID %>
                    &category=<%= CateName.First().CategoryID %>">Delete</a></td>
            </tr>
        <%} %>
    </table>    
</asp:Content>
