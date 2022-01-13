<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="historias.aspx.cs" Inherits="consciencia.historias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="estilos/estilo.css" rel="stylesheet" />
    <link href="estilos/historias.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Título da página</title>
    <meta charset="utf-8" />
</head>
<body>
    <form id="form1" runat="server">
        <%--<form id="form1" runat="server">
            <div>
            </div>
        </form>--%>
        <div class= "container" id="menu" >
            <span>
                <a href="index.aspx">
                    <img src="imgs/dvrsd.png" alt="logo diversidade">
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

        <div class= "container" id="corpo">
        
            <div id= "titulo">
                <h1>Histórias de pessoas pretas</h1>
            </div>
            <div id= "funcionalidades">
                <asp:Button  runat="server"
                    Id="btnAddHistory"
                    Text="Contar Minha História"
                    OnClick="addClick" />
            </div>
            <div id= "cards">
                <ul>
                    <asp:Repeater ID="Repeater1" runat="server" ItemType="consciencia.DAO.HistoriaDAO">
                        <ItemTemplate>
                            <li id="<%# Item.Id %>">
                               <div class="card">
                                    <div class="card-infos">
                                        <div class="card-cabecalho">
                                            <h4 class="card-titulo"><%# Item.Nome %></h4>
                                            <asp:Button ID="btnDelete" 
                                                Text="deletar"
                                                class="button"
                                                CommandName="deleteHistory" 
                                                CommandArgument='<%# Item.Id %>' 
                                                OnCommand="delete_Click" 
                                                runat="server" />
                                            <asp:Button ID="btnEditar" 
                                                Text="editar"
                                                class="button"
                                                CommandName="editHistory" 
                                                CommandArgument='<%# Item.Id %>' 
                                                OnCommand="edit_Click" 
                                                runat="server" />
                                        </div>
                                        <hr />
                                        <p class="card-corpo">
                                            <%# Item.Historia %>
                                        </p>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </form>
</body>
</html>
