<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentInformation.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="col-md-8 offset-2" style="margin-top:50px"> 
            <h1 class="text-center" style="color: darkmagenta">Register Now!</h1>

            <br />

            <div class="form-group">
                <label for="name">Full Name</label>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="city">City</label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="courseid">Course ID</label>
                <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
            </div>

            <asp:Button ID="Button1" runat="server" Text="Register" class="btn btn-custom" OnClick="Button1_Click" />
        </div>

    </div>




</asp:Content>
