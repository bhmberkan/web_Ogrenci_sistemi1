<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="NotListesi.aspx.cs" Inherits="NotListesi" %>

<%-- İçerik denetimlerini buraya ekleyin --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <thead bgcolor="#524F50">
            <tr>

                <th scope="col">ÖĞRENCİ ID</th>
                <th scope="col">AD SOYAD</th>
                <th scope="col">DERS ADI</th>
                <th scope="col">SINAV 1</th>
                <th scope="col">SINAV 2</th>
                <th scope="col">SINAV 3</th>
                <th scope="col">ORTALAMA</th>
                <th scope="col">DURUM</th>
                <th scope="col">GÜNCELLE</th>
            </tr>
        </thead>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <itemtemplate>
              <tr>
                 
                  <td><%#Eval("OGRENCIID") %></td>
                  <td><%#Eval("OGRENCIADSOYAD") %></td>
                  <td><%#Eval("DERSAD") %></td>
                  <td><%#Eval("SINAV1") %></td>
                  <td><%#Eval("SINAV2") %></td>
                  <td><%#Eval("SINAV3") %></td>
                  <td><%#Eval("ORTALAMA") %></td>
                  <td><%#Eval("DURUM") %></td>
           
                  <td>    
                      <asp:HyperLink NavigateUrl='<%#"~/NotSil.aspx?NOTID="+Eval("NOTID")%>'  ID="Hyperlink1"  runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>


                      <asp:HyperLink ID="Hyperlink2" NavigateUrl='<%#"~/NotGuncelle.aspx?NOTID="+Eval("NOTID") %>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>                    
                  </td>
              </tr>
              
             
          </itemtemplate>
            </asp:Repeater>
        </tbody>
    </table>

    <%--<asp:HyperLink ID="HyoerLink3"  NavigateUrl="~/NotEkle.Aspx" runat="server" CssClass="btn btn-info" Width="70px"> EKLE </asp:HyperLink>--%>
</asp:Content>
