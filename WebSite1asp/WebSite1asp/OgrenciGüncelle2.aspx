<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrenciGüncelle2.aspx.cs" Inherits="OgrenciGüncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="Form1" runat="server">

        <div class="form-group">

            <div>
             <asp:Label for="TxtNumara" runat="server"> Numara</asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Enabled="false" ></asp:TextBox>       
           </div>
            <br />

             <div>
             <asp:Label for="Textbox2" runat="server"> Öğrenci Adı</asp:Label>
                <asp:TextBox ID="Textbox2" runat="server" CssClass="form-control" ></asp:TextBox>       
           </div>
            <br />

             <div>
             <asp:Label for="Textbox3" runat="server"> Öğrenci Soyadı</asp:Label>
                <asp:TextBox ID="Textbox3" runat="server" CssClass="form-control" ></asp:TextBox>       
           </div>
            <br />

             <div>
             <asp:Label for="Textbox4" runat="server"> Fotograf</asp:Label>
                <asp:TextBox ID="Textbox4" runat="server" CssClass="form-control" ></asp:TextBox>       
           </div>
            <br />

             <div>
             <asp:Label for="TxtTNumara" runat="server"> Telefon</asp:Label>
                <asp:TextBox ID="TxtTNumara" runat="server" CssClass="form-control" > </asp:TextBox>       
           </div>
            <br />

             <div>
             <asp:Label for="Textbox6" runat="server"> Mail</asp:Label>
                <asp:TextBox ID="Textbox6" runat="server" CssClass="form-control" ></asp:TextBox>       
           </div>
            <br />

             <div>
             <asp:Label for="Textbox7" runat="server"> Şifre</asp:Label>
                <asp:TextBox ID="Textbox7" runat="server" CssClass="form-control" ></asp:TextBox>       
           </div>
           <br />

            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click"  />

             </div>
            </form>

</asp:Content>

