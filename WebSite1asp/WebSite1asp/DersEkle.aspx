<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersEkle.aspx.cs" Inherits="DersEkle" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="server"> 

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
            <asp:Label for="TxtDers" runat="server">Ders Adı</asp:Label>
             <asp:TextBox ID="TxtDers" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
          

            </div>
            
            <asp:Button ID="Button1" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Button1_Click" />

            </form>


</asp:Content>