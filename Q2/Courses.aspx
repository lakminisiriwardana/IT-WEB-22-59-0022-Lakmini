<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="StudentInformation.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <div class="container"> 
        <div class="col-md-8 offset-2" style="margin-top:50px"> 
            <h1 class="text-center" style="color: darkmagenta">Add Course</h1>

            <br />

         <div class="form-group">
            <label for="id">Course ID</label>
            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="coursename">Course Name</label>
            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="lecturer">Lecturer Name</label>
            <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-custom" OnClick="Button1_Click"/>

        </div>
        </div>

</asp:Content>
