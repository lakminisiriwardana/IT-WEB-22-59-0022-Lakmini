<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details page.aspx.cs" Inherits="StudentInformation.Details_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Details</title>
    <link rel="stylesheet" href="./css/styles.css" />
</head>

<body>

    

    <form id="form1" runat="server">

        <asp:Button ID="Button1" runat="server" Text="Home" class="btn btn-home" OnClick="Button1_Click" />
       

        <div class="container">
            <div class="row"> 
            <div class="col-md-4 offset-4">
                <h1 class="text-center" style="color: darkmagenta">Student Information </h1>
            </div>
            </div>
        </div>

        <br />

        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="form-group">


                    <asp:GridView class="align-items:center" ID="GridView1" Width="100%"
                        CssClass="table-responsive table-bordered table-condensed table-responsive table-hover" CellPadding="5"
                        runat="server">

                        <HeaderStyle BackColor="darkmagenta"
                            ForeColor="White" Font-Bold="true" Font-Size="Larger" HorizontalAlign="Center" VerticalAlign="Middle" />

                        <RowStyle BackColor="mistyrose"
                            ForeColor="Black" Height="40px" Font-Size="Large" VerticalAlign="Middle" />

                        <AlternatingRowStyle BackColor="plum"
                            ForeColor="black" />


                    </asp:GridView>

                </div>
            </div>
        </div>
    </form>

</body>
</html>
