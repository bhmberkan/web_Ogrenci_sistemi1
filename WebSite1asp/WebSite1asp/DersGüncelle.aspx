<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersGüncelle.aspx.cs" Inherits="DersGüncelle" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server"> 

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="server"> 

    <form id="Form1" runat="server">

        <div class="form-group">

             <div>
             <asp:Label for="TxtDersID" runat="server">Ders ID</asp:Label>
             <asp:TextBox ID="TxtDersID" runat="server" CssClass="form-control"></asp:TextBox>
           </div>

             <div>
             <asp:Label for="TxtDersAd" runat="server">Ders Adı</asp:Label>
             <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
            
        </div>
       


        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />
    
    
    </form>

    </asp:Content>