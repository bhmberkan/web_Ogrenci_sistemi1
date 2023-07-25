<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPanel.aspx.cs" Inherits="LoginPanel" %>



   
<!DOCTYPE html>

<style>


body {
  background-image: url('pexels-pixabay-247839.jpg');
}
.baslik{
    color: white;
    font-family:Courier, monospace;
}
h1:hover{
    color: brown;
}

</style>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="style.css">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    
    <form id="form1" runat="server">
        <div class="baslik" style="width: 700px; margin: auto; ">
            <h1 style="text-align: center; ">Kullanıcı giriş Sayfası </h1>
            <br />
            <br />
            <br />
            <br />
            <div style=" width:auto ; text-align:center; " >
           <asp:Image ID="Image1" runat="server" Height="200px" Widht="200px" ImageUrl="~/pexels-pixabay-247839.jpg" />
            </div>
           <br />
            <br />
           
            
            <div>

                <asp:Label for="TxtNumara" runat="server"> Numara </asp:Label>
                <asp:TextBox id="TxtNumara" runat="server" CssClass="form-control" Width="700px"></asp:TextBox>
            
            </div>
            <br />

            <div>
                <asp:Label for="TxtSifre" runat="server"> Şifre </asp:Label>
                <asp:TextBox id="TxtSifre" runat="server" CssClass="form-control" Width="700px" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap"  CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click" />
            <br />
            <br />

             <asp:Button ID="Button2" runat="server" Text="Ogretmen Giriş"  CssClass="btn btn-danger" Width="350px" OnClick="Button2_Click" />
            <asp:Button ID="Button4" runat="server" Text="Hakkında"  CssClass="btn btn-info" Width="340px" OnClick="Button4_Click" />

        </div>
    </form>
</body>
</html>



