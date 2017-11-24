﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="UnpaidBillReportUI.aspx.cs" Inherits="DiagnosticCenterBillManagementApp.UI.UnpaidBillReportUI" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form runat="server">
         <div align="center" class="jumbotron ">
        <h3 style="text-align: left">Unpaid Bill Report</h3>

        <div class="container">


            <table>
                <tr>
                    <td >Form Date</td>
                    <td>
                        <asp:TextBox ID="unpaidBillFormDateTextBox" runat="server"></asp:TextBox>

                    </td>
                </tr>

                <tr>
                    <td >To Date</td>
                    <td>
                        <asp:TextBox ID="unpaidBillToDateTextBox" runat="server"></asp:TextBox>
                        <asp:Button ID="unpaidBillShowButton" runat="server" Text="Show" OnClick="unpaidBillShowButton_Click" /></td>


                </tr>
            </table>

        </div>

        <div align="center" id="Test">
            <asp:GridView ID="unpaidBillReportGridView" ShowHeaderWhenEmpty="True" runat="server" AutoGenerateColumns="False">
                
                <Columns>
                    <asp:TemplateField HeaderText="Sl">
                        <ItemTemplate>
                            <%#  Container.DataItemIndex+1 %>
        
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Bill Number">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("BillNumber")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Contact No">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("ContactNo")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Patient Name">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("PatientName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Bill Amount">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("BillAmount")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </div>
             <div></div>
        <div class="container" style="padding-top: 20px">
            <table>
                <tr>
                    <td >
                        <input type="submit" onclick="PrintDiv('Test')" value="Print" />

                    </td>

                    <td><b>Total</b>   
                    <asp:TextBox ID="unpaidBillTotalTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>


            </table>

        </div>
    </div>
    </form>  

    <script>
        function PrintDiv(divname) {
            var printContents = document.getElementById(divname).innerHTML;
            var oldPage = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = oldPage;
        }
    </script>
    <div >
        <button type="button" class="btn ">
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/UI/Default.aspx" runat="server"> Back</asp:HyperLink></button>
    </div>
</asp:Content>
