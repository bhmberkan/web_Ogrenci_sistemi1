    <%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="GidenMesajlar.aspx.cs" Inherits="GidenMesajlar" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="table table-bordered table-hover">
        <thead bgcolor="#524F50">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">ALICI</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">İÇERİK</th>
                <th scope="col">TARIH</th>
               

            </tr>
        </thead>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
              <tr>
                  <td><%#Eval("MESAJID") %></td>
                  <td><%#Eval("ALICI")%></td>
                  <td><%#Eval("BASLIK")%></td>
                  <td><%#Eval("ICERIK") %></td>
                  <td><%#Eval("TARIH") %></td>

                  
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
