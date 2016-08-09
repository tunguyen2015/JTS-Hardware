<%@ Page Title="Categories" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataManagement.aspx.cs" Inherits="ClerkSite.DataManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">        
    <h2 class="form-signin-heading">All Categories</h2>
    <a href="NewCategory.aspx" class="btn btn-lg btn-primary">New Category</a>    
    <a href="NewProduct.aspx" class="btn btn-lg btn-primary">New Product</a>
    <br/><br/>
    <table class="table table-striped table-bordered">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Image</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <% foreach (var cate in Categories) { %>
            <tr>                
                <td><%=cate.CategoryID %></td>
                <td><a href="ProductList.aspx?id=<%=cate.CategoryID %>"><%=cate.Title %></a></td>
                <td><%=cate.ImageUrl %></td>
                <td>                                                                                             
                    <a href="EditCategory.aspx?id=<%=cate.CategoryID %>">Edit</a>                            
                </td>
                <td>
                    <a href="DataManagement.aspx?id=<%=cate.CategoryID %>">Delete</a>
                </td>
            </tr>
        <%} %>
    </table>       
</asp:Content> 