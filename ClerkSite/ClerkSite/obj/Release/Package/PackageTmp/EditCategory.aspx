<%@ Page Title="Update Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditCategory.aspx.cs" Inherits="ClerkSite.EditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">    
    <div>
        <h2 class="form-signin-heading">Update Category</h2>
        <br />  
        <div class="form-group">
            <label for="title" class="col-sm-2 control-label">Title</label>
            <asp:TextBox ID="title" runat="server" CssClass="form-control" ></asp:TextBox>    
        </div>
        <div class="form-group">
            <label for="imageurl" class="col-sm-2 control-label">Image URL</label>
            <asp:TextBox ID="imagerurl" runat="server" CssClass="form-control"></asp:TextBox>        
        </div>    
        <%--Text Field validation--%>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="title" Display="None" 
            ErrorMessage="Title cannot be empty"></asp:RequiredFieldValidator>

        <asp:ValidationSummary ID="validateSum" runat="server" />
        <%--Text Field validation--%>      
        <div class="form-group">
            <div class="col-sm-offset-2">
                <asp:Button ID="edit" runat="server" Text="Edit" CssClass="btn btn-lg btn-info" OnClick="Edit_Click"/>
            </div>                            
        </div>         
    </div>       
</asp:Content>
