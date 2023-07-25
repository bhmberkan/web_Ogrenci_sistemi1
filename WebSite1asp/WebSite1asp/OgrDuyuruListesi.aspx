<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.master" AutoEventWireup="true" CodeFile="OgrDuyuruListesi.aspx.cs" Inherits="OgrDuyuruListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    
     <table class="table table-bordered table-hover">
  <thead bgcolor="#524F50">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">BAŞLIK</th>
      <th scope="col">İÇERİK</th>
      <th scope="col">ÖĞRETMEN</th>
     
   
    </tr>
  </thead>
  <tbody>

      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("DUYURUID") %></td>
                  <td><%#Eval("DUYURUBASLIK")%></td>
                  <td><%#Eval("DUYURUICERIK")%></td>
                  <td><%#Eval("DUYURUOGRT") %></td> 

                  
                 <%-- <td>
                      
                      <asp:HyperLink NavigateUrl='<%#"~/DuyuruSil.aspx?DUYURUID="+Eval("DUYURUID")%>'  ID="Hyperlink1"  runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>


                      <asp:HyperLink NavigateUrl='<%#"~/DuyuruGüncelle.aspx?DUYURUID="+Eval("DUYURUID")%>' ID="Hyperlink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                  </td>--%>
              </tr>
          </ItemTemplate>

      </asp:Repeater>


    
  </tbody>
</table>
   

</asp:Content>

