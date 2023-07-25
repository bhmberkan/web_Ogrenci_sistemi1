<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotGuncelle.aspx.cs" Inherits="NotGuncelle" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server"> 

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="server"> 

     <form id="Form1" runat="server">
          
        <div class="form-group">

              <div>
             <asp:Label for="TxtDersAd" runat="server"> Ders Adı</asp:Label>
                  <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
                <%--<asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>--%>
           </div>
            <br />

            <div>
             <asp:Label for="TxtOgrId" runat="server">Ogrenci Id</asp:Label>
             <asp:TextBox ID="TxtOgrId" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
            <br />

            <div>
            <asp:Label for="TxtOgrAdSoyad" runat="server">Öğrenci Ad Soyad</asp:Label>
             <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
            <br />

            <div> 
            <asp:Label for="TxtSınav1" runat="server">Sınav 1</asp:Label>
             <asp:TextBox ID="TxtSınav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

             <div> 
            <asp:Label for="TxtSınav2" runat="server">Sınav 2</asp:Label>
             <asp:TextBox ID="TxtSınav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

             <div> 
            <asp:Label for="TxtSınav3" runat="server">Sınav 3</asp:Label>
             <asp:TextBox ID="TxtSınav3" runat="server" CssClass="form-control"></asp:TextBox>
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

        </div>
       


        <asp:Button ID="BtnHesapla" runat="server" Text="Hesapla" CssClass="btn btn-toolbar" OnClick="BtnHesapla_Click"  />
    
        <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="BtnGuncelle_Click"  />
    
     <br />
         <br />
          <asp:Label ID="Label1" runat="server" Text="Label">Öğrenci Adı ID üzerinden Gelmektedir Değiştirmek için ID yi değiştirmeniz yeterlidir</asp:Label>

    </form>

</asp:Content>