<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="MesajOlustur.aspx.cs" Inherits="MesajOlustur" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">

        <div class="form-group">

            <div>
             <asp:Label for="TxtGönderen" runat="server"> Gönderen</asp:Label>
                <asp:TextBox ID="TxtGönderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>       
           </div>
            <br />

            <div>
            <asp:Label for="TxtAlıcı" runat="server"> Alıcı</asp:Label>
             <asp:TextBox ID="TxtAlıcı" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <br />

            <div> 
            <asp:Label for="TxtMesajBaslik" runat="server">Mesaj Başlık</asp:Label>
                <asp:TextBox ID="TxtMesajBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

             <div> 
            <asp:Label for="Txtİçerik" runat="server"> İçerik</asp:Label>
                <textarea id="Txtİçerik" cols="20" rows="6"  class="form-control" runat="server"></textarea>
            </div>
            <br />
               
            </div>
            
            <asp:Button ID="Button1" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="Button1_Click"/>

            </form>

    </asp:Content>
