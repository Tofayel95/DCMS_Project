<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DiagnosticCenterBillManagementApp.UI.DefaultUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../Content/ContentDesign.css" rel="stylesheet" />

    <div>
        <div id="img" class="col-sm-8">
            <img class="mySlides" src="../Content/Images/diaglarge.jpg" />
            <img class="mySlides" src="../Content/Images/diagonislarge.jpg" />
            <img class="mySlides" src="../Content/Images/dialarge.jpg" />
            <img class="mySlides" src="../Content/Images/lab-217041__340.jpg" />
            <img class="mySlides" src="../Content/Images/pill-1884777__340.jpg" />

        </div>
        <div id="txt">
            <h1 style="text-align: center">Diagnostic Center Bill Management System</h1>
        </div>
    </div>

    <script>
        var slideIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > x.length) { slideIndex = 1 }
            x[slideIndex - 1].style.display = "block";
            setTimeout(carousel, 4000); // Change image every 2 seconds
        }
    </script>

</asp:Content>
