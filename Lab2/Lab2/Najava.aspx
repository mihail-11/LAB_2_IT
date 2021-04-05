<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="Lab2.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    Корисник:<asp:TextBox ID="txtKorisnik" runat="server"></asp:TextBox><br />
    Лозинка:<asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click"  />
    <br />
    <asp:Label ID="lblObidi" runat="server"></asp:Label>
</asp:Content>
