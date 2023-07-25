<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DersListesi.aspx.cs" Inherits="DersListesi" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server"> 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="server"> 

    <table class="table table-bordered table-hover">
  <thead bgcolor="#524F50">
    <tr>
      <th scope="col">DERS ID</th>
      <th scope="col">DERS ADI</th>
      <th scope="col">İŞLEMLER </th>
   
    </tr>
  </thead>
  <tbody>

      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("DERSID") %></td>
                  <td><%#Eval("DERSAD")%></td>
                
                  <td>
                      
                      <asp:HyperLink NavigateUrl='<%#"~/DersSil.aspx?DERSID="+Eval("DERSID")%>'  ID="Hyperlink1"  runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>


                      <asp:HyperLink NavigateUrl='<%#"~/DersGüncelle.aspx?DERSID="+Eval("DERSID")%>' ID="Hyperlink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>    
  </tbody>
</table>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/DersEkle.aspx" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
    

</asp:Content>