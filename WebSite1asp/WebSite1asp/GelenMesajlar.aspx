<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="GelenMesajlar.aspx.cs" Inherits="GelenMesajlar" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="table table-bordered table-hover">
        <thead bgcolor="#524F50">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">GÖNDEREN</th>
                <th scope="col">BAŞLIK</th>
                <th scope="col">İÇERİK</th>
                 <th scope="col">TARİH</th>
                

            </tr>
        </thead>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>
              <tr>
                  <td><%#Eval("MESAJID") %></td>
                  <td><%#Eval("GONDEREN")%></td>
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
