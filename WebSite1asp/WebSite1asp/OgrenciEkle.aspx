<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="OgrenciEkle.aspx.cs" Inherits="OgrenciEkle" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
            <asp:Label for="TxtOgrNumara" runat="server">Numara </asp:Label>
             <asp:TextBox ID="TxtOgrNumara" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <br />

            <div>
             <asp:Label for="TxtOgrAd" runat="server">Öğrenci adı</asp:Label>
             <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
            <br />

            <div>
            <asp:Label for="TxtOgrSoyad" runat="server">Öğrenci Soyad</asp:Label>
             <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <br />

            
            

            <div> 
            <asp:Label for="TxtOgrTelefon" runat="server">Öğrenci Telefon</asp:Label>
             <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

             <div> 
            <asp:Label for="TxtOgrMail" runat="server">Öğrenci Mail</asp:Label>
             <asp:TextBox ID="TextOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

             <div> 
            <asp:Label for="TxtOgrSifre" runat="server">Öğrenci Şifre</asp:Label>
             <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

             <div> 
            <asp:Label for="TxtOgrFoto" runat="server">Öğrenci Fotoğraf linki</asp:Label>
             <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        </div>
       


        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click" />
    
    
    </form>
</asp:Content>