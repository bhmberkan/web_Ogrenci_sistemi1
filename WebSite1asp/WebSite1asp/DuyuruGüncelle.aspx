<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruGüncelle.aspx.cs" Inherits="DuyuruGüncelle" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="server"> 

    <form id="Form1" runat="server">

        <div class="form-group">

             <div>
             <asp:Label for="TxtDuyuruID" runat="server">Duyuru ID</asp:Label>
             <asp:TextBox ID="TxtDuyuruID" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
            <br />

            <div>
             <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlık </asp:Label>
             <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
            <br />

            <div>
            <asp:Label for="TextArea1" runat="server">Duyuru İçerik</asp:Label>
             <textarea id="TextArea1" cols="20" rows="6"  class="form-control" runat="server"></textarea>
             </div>
            <br />
        </div>
       


        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />
    
    
    </form>


</asp:Content>