<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca1.aspx.cs" Inherits="Lab2.Zadaca1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div>
      Име <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
    </div>

    <div>
     Презиме <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
    </div>
    
    <div>
      Од <asp:DropDownList ID="ddlOd" runat="server">
            <asp:ListItem>Скопје</asp:ListItem>
            <asp:ListItem>Охрид</asp:ListItem>
        </asp:DropDownList>
    </div>

    <div>
      До <asp:DropDownList ID="ddlDo" runat="server">
            <asp:ListItem>Виена</asp:ListItem>
            <asp:ListItem>Лондон</asp:ListItem>
            <asp:ListItem>Рим</asp:ListItem>
            <asp:ListItem>Берлин</asp:ListItem>
        </asp:DropDownList>
    </div>

    <div>
     Датум              <asp:DropDownList ID="ddlDen" runat="server"></asp:DropDownList>
                        <asp:DropDownList ID="ddlMesec" runat="server"></asp:DropDownList> <br />
           на тргање    <asp:DropDownList ID="ddlGodina" runat="server"></asp:DropDownList>
    </div>

    <div>
       Време на тргање <asp:DropDownList ID="ddlVreme" runat="server"></asp:DropDownList>
    </div>

    <div>
      Превозно средство&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;<asp:ListBox ID="lstSredstvo" runat="server" Height="51px" Width="70px">
            <asp:ListItem>Авион</asp:ListItem>
            <asp:ListItem>Воз</asp:ListItem>
        </asp:ListBox>
    </div>

    <div>
      Зона      <asp:RadioButtonList ID="rblZona" runat="server">
            <asp:ListItem>Пушачи</asp:ListItem>
            <asp:ListItem>Непушачи</asp:ListItem>
        </asp:RadioButtonList>
    </div>

    <div>
        Класа     <asp:RadioButtonList ID="rblKlasa" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Економска</asp:ListItem>
            <asp:ListItem>Бизнис</asp:ListItem>
        </asp:RadioButtonList>
    </div>

    <div>
      Послуга  <asp:CheckBoxList ID="cblPosluga" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Пијалок</asp:ListItem>
            <asp:ListItem>Кафе</asp:ListItem>
            <asp:ListItem>Оброк</asp:ListItem>
        </asp:CheckBoxList>
    </div>
    
    <div>
        <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
    </div>


    <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" Visible="False" Width="478px">
        <span style="color: #000066">Почитуван патнику</span><br />
            <asp:Label ID="lblPatnik" runat="server" Text="" style="color: #CC0000"></asp:Label>
            &nbsp;<span style="color: #000066">издадена ви е карта за<br /> </span>
        <asp:Label ID="lblPoraka" runat="server" style="color: #000066; font-weight: 700; font-style: italic"></asp:Label>
        <span style="color: #000066">&nbsp;<br /> со почетна дестинација<br /> </span>
        <asp:Label ID="lblOd" runat="server" style="color: #000066; font-weight: 700; font-style: italic"></asp:Label>
        <span style="color: #000066">
        <br />
        и крајна дестинација<br /> </span>
        <asp:Label ID="lblDo" runat="server" style="color: #000066; font-weight: 700; font-style: italic"></asp:Label>
        <span style="color: #000066">
        <br />
        времето на поаѓање е
        <br />
        <br />
        </span>
        <asp:Label ID="lblVreme" runat="server" style="color: #000066; font-style: italic; font-weight: 700"></asp:Label>
        <span style="color: #000066">&nbsp;вашето место на седење ќе биде во зоната
        <br />
        за
        </span>
        <asp:Label ID="lblZona" runat="server" style="color: #000066; font-weight: 700; font-style: italic"></asp:Label>
        <span style="color: #000066">&nbsp;во </span>
        <asp:Label ID="lblKlasa" runat="server" style="color: #000066; font-weight: 700; font-style: italic"></asp:Label>
        <span style="color: #000066">&nbsp;класа
        <br />
        и во текот на патувањето ќе бидете послужени
        <br />
        со </span>
        <asp:Label ID="lblPosluga" runat="server" style="color: #000066; font-weight: 700; font-style: italic"></asp:Label>
        <br />
        <asp:Image ID="imgSlika" runat="server" Height="250px" Width="250px" /> <br />
        <span style="color: #000066">Ви благодариме на довербата и
        <br />
        ви посакуваме среќен пат! </span>
        
    </asp:Panel>


</asp:Content>
