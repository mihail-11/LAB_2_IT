<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca2_A_1.aspx.cs" Inherits="Lab2.Zadaca2_A_1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
       Израз1: <asp:TextBox ID="izraz1" runat="server"></asp:TextBox>
        <br />
       Македонски Телефон:<asp:TextBox ID="telefonMKD" runat="server"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1" 
            runat="server" 
            ErrorMessage="Невалиден влез за првиот израз!" 
            ControlToValidate="izraz1" 
            ValidationExpression="[A-Z0-9]+(_)?(\d+){2}">
        </asp:RegularExpressionValidator>
        <br />
        <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator2" 
            runat="server" 
            ErrorMessage="Невалиден влез за македонски телефонски број!" 
            ControlToValidate="telefonMKD" 
            ValidationExpression="^[\+]?[389]{3}[\s][0-9]{1,2}[\s][0-9]{3,}[\s]?[0-9]{3}">
        </asp:RegularExpressionValidator>
    </div>
</asp:Content>
