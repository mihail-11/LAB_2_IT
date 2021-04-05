<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca_2_B.aspx.cs" Inherits="Lab2.Zadaca_2_B" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   Име <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator 
        class="text-danger"
        ID="reqFieldValidName" 
        runat="server" 
        ErrorMessage="Полето за име е задолжително!" 
        ControlToValidate="txtIme">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator 
        class="text-danger"
        ID="regexIme" 
        runat="server" 
        ErrorMessage="Името содржи невалидни знаци!" 
        ControlToValidate="txtIme" 
        ValidationExpression="^[a-zA-Z]+$">
    </asp:RegularExpressionValidator>
    <br />
   Презиме <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator 
        class="text-danger"
        ID="prezimeVal" 
        runat="server" 
        ErrorMessage="Полето за презиме е задолжително!" 
        ControlToValidate="txtPrezime">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator 
        class="text-danger"
        ID="regexPrezime" 
        runat="server" 
        ErrorMessage="Презимето содржи невалидни знаци!" 
        ControlToValidate="txtPrezime" 
        ValidationExpression="^[a-zA-Z]+$">
    </asp:RegularExpressionValidator>
    <br />
   ФИНКИ ID <asp:TextBox ID="txtID" runat="server"> </asp:TextBox> @finki.ukim.mk
    <asp:RequiredFieldValidator 
        class="text-danger"
        ID="IDval" 
        runat="server" 
        ErrorMessage="Полето за ID е задолжително!" 
        ControlToValidate="txtID">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator 
        class="text-danger"
        ID="regexID" 
        runat="server" 
        ErrorMessage="Неправилен формат на ID" 
        ValidationExpression="^[a-z0-9]+([\.\-]?[a-z0-9]+)?$"
        ControlToValidate="txtID">
    </asp:RegularExpressionValidator>
    <br />
   Лозинка <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator 
        class="text-danger"
        ID="reqPassword" 
        runat="server" 
        ErrorMessage="Полето за Password е задолжително!" 
        ControlToValidate="txtPassword">
    </asp:RequiredFieldValidator>
    <br />
   Потврда <asp:TextBox ID="txtCPassword" runat="server" TextMode="Password"></asp:TextBox> 
     <asp:RequiredFieldValidator 
        class="text-danger"
        ID="reqCPassword" 
        runat="server" 
        ErrorMessage="Полето за Confirm_Password е задолжително!" 
        ControlToValidate="txtCPassword">
    </asp:RequiredFieldValidator>
    <asp:CompareValidator 
        class="text-danger"
        ID="cmpPassword" 
        runat="server" 
        ErrorMessage="Лозниките не се совпаѓаат!"
        ControlToValidate="txtCPassword"
        ControlToCompare="txtPassword">
    </asp:CompareValidator>
    <br />
   Адреса <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator 
        class="text-danger"
        ID="reqAdresa" 
        runat="server" 
        ErrorMessage="Внеси адреса!" 
        ControlToValidate="txtAdresa">
    </asp:RequiredFieldValidator>
    <br />
   Телефон <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator 
        class="text-danger"
        ID="reqMobile" 
        runat="server" 
        ErrorMessage="Полето за телефон е задолжително!" 
        ControlToValidate="txtTelefon">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator 
        class="text-danger"
        ID="regexMobile" 
        runat="server" 
        ErrorMessage="Неправилен формат" 
        ControlToValidate="txtTelefon"
        ValidationExpression="^[\+]?[389]{3}[\s][0-9]{1,2}[\s][0-9]{3,}[\s]?[0-9]{3}">

    </asp:RegularExpressionValidator>
    <br />
   Пол<asp:RadioButtonList ID="pol" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem>М</asp:ListItem>
        <asp:ListItem>Ж</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator
        class="text-danger"
        ID="reqPol" 
        runat="server" 
        ErrorMessage="Избери пол" 
        ControlToValidate="pol">
    </asp:RequiredFieldValidator>
    Датум на раѓање
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    Занимање
    <asp:DropDownList ID="zanimanje" runat="server" Height="16px">
        <asp:ListItem>-занимање-</asp:ListItem>
        <asp:ListItem>занимање1</asp:ListItem>
        <asp:ListItem>занимање2</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator
        class="text-danger"
        ID="reqZanimanje" 
        runat="server" 
        ErrorMessage="Изберете занимање!" 
        ControlToValidate="zanimanje" 
        InitialValue="-занимање-"></asp:RequiredFieldValidator>
    <br />
    Години на вршење на избраната дејност<br />
    <asp:TextBox ID="iskustvo" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator 
        class="text-danger"
        ID="reqIskustvo" 
        runat="server" 
        ErrorMessage="Недозволена вредност" 
        ControlToValidate="iskustvo">
    </asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator 
        class="text-danger"
        ID="regexIskustvo" 
        runat="server" 
        ErrorMessage="Недозволена вредност" 
        ControlToValidate="iskustvo" 
        ValidationExpression="\d*"></asp:RegularExpressionValidator>
    <br />

    <asp:ValidationSummary ID="vldSum" runat="server" style="font-weight: 700; color: #FF0000" />
    <asp:Label ID="username" runat="server" Text="Добредојде: "></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />

</asp:Content>
