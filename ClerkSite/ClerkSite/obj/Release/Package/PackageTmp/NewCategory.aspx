<%@ Page Title="Add Category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewCategory.aspx.cs" Inherits="ClerkSite.NewCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 class="form-signin-heading">New Category</h2>
        <br />          
        <div class="form-group">     
            <asp:RequiredFieldValidator runat="server" ControlToValidate="title" Display="Dynamic" 
                ErrorMessage="Title cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>               
            <asp:TextBox ID="title" runat="server" CssClass="form-control" PlaceHolder="Title"></asp:TextBox>    
        </div>

        <div class="form-group">                    
            <asp:TextBox ID="imagerurl" runat="server" CssClass="form-control" PlaceHolder="Image URL"></asp:TextBox>        
        </div>                          

        <div class="form-group">                    
            <asp:Button ID="add_cate" runat="server" Text="Add Category" CssClass="btn btn-lg btn-info" OnClick="Add_Cate_Click"/>                                  
        </div>                 
    </div>
</asp:Content>
