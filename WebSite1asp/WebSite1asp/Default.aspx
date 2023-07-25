<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%-- İçerik denetimlerini buraya ekleyin --%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server"> 

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="server"> 
    
    <table class="table table-bordered table-hover">
  <thead bgcolor="#524F50">
    <tr>
      <th scope="col">ID</th>
       <th scope="col">NUMARA</th>
      <th scope="col">AD</th>
      <th scope="col">SOYAD</th>
      <th scope="col">TELEFON</th>
      <th scope="col">MAİL</th>
      <th scope="col">ŞİFRE</th>
      <th scope="col">İŞLEMLER</th>

    </tr>
  </thead>
  <tbody>

      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("OGRID") %></td>
                  <td><%#Eval("NUMARA") %></td>
                  <td><%#Eval("OGRAD")%></td>
                  <td><%#Eval("OGRSOYAD")%></td>
                  <td><%#Eval("OGRTELEFON") %></td> 
                  <td><%#Eval("OGRMAIL")%></td>
                  <td><%#Eval("OGRSIFRE")%></td>
                  <td>

                      <asp:HyperLink ID="Hyperlink1" NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+Eval("OGRID")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>


                      <asp:HyperLink ID="Hyperlink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+Eval("OGRID") %>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>

      </asp:Repeater>

    
  </tbody>
</table>

   <%--  <th scope="row">1</th>--%>
</asp:Content>