<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotEkle.aspx.cs" Inherits="NotEkle" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="server"> 

    <form id="Form1" runat="server">

       
   <div>
            <asp:Label for="TxtID" runat="server">Ogrenci ID</asp:Label>
             <asp:TextBox ID="TxtID" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <br />

         <div>
            <asp:Label for="TxtDersID" runat="server">Ders ID</asp:Label>
             <asp:TextBox ID="TxtDersID" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <br />

    <div>
            <asp:Label for="TxtS1" runat="server">Sınav 1</asp:Label>
             <asp:TextBox ID="TxtS1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <br />

    <div>
            <asp:Label for="TxtS2" runat="server">Sınav 2</asp:Label>
             <asp:TextBox ID="TxtS2" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <br />

    <div>
            <asp:Label for="TxtS3" runat="server">Sınav 3</asp:Label>
             <asp:TextBox ID="TxtS3" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <br />

    <div>
            <asp:Label for="TxtOrt" runat="server">Ortalama</asp:Label>
             <asp:TextBox ID="TxtOrt" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <br />

    <div>
            <asp:Label for="TxtDurum" runat="server">Durum</asp:Label>
             <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <br />
      
     <asp:Button ID="Button1" runat="server" Text="Not Ekle" CssClass="btn btn-info" OnClick="Button1_Click"  />
         

        </form>


</asp:Content>