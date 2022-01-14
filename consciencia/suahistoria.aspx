<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="suahistoria.aspx.cs" Inherits="consciencia.suahistoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="estilos/estilo.css" rel="stylesheet" />
    <link href="estilos/suahistoria.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Título da página</title>
    <meta charset="utf-8" />
</head>
<body>
     <div class= "container" id="menu" >
        <span>
            <a href="index.aspx">
                <img src= "imgs/dvrsd.png" alt= "logo diversidade" />
            </a>
        </span>
        <ul>
            <li>
                <a href="consciencia.html">Consciência negra</a>
            </li>
            <li>
                <a href="blacklives.html">Black Lives Matter</a>
            </li>
            <li>
                <a href="colorismo.html">Colorismo</a>
            </li>
            <li>
                <a href="historias.aspx">Histórias Emocionantes</a>
            </li>
        </ul>
    </div>

    <form id="form1" runat="server">
        <div class= "container" id="corpo">
            <div id= "titulo">
                <h1>Compartilhe sua história</h1>
                <p><%=id %></p>
            </div>
            <div id="form">
                <table>  
                <tr>  
                    <td>Seu nome</td>  
                    <td>  
                        <asp:TextBox ID="nomeTxtBox" runat="server"></asp:TextBox>  
                    </td>  
               </tr>  
               <tr>  
                    <td>Sua História</td>  
                    <td>  
                        <asp:TextBox ID="historiaTxtBox" runat="server"></asp:TextBox>  
                    </td>  
               </tr>  
                <tr>  
                    <td>  
                        <asp:Button ID="CreateHistoria" runat="server" Text="Button" OnCommand="CreateHistoria_Click"  />  
                    </td>  
                </tr>  
            </table>  
            </div>
        </div>
    </form>
</body>
</html>
