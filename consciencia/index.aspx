<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="consciencia.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="estilos/estilo.css" rel="stylesheet" />
    <link href="estilos/index.css" rel="stylesheet" />
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

    <div class= "container" id="corpo">
        
        <div id= "titulo">
            <h1>Consciência racial</h1>
        </div>
        <div id= "handshake">
            <img src="imgs/mao_1.png">
        </div>
        <div id= "texto"> 
            <p> Projeto voltado a integração de duas paixões: Tecnologia e Causas Sociais. Como proposta de conclusão de curso da Academia.Net, um projeto da empresa Atos que visa formar novos desenvolvedores.
            </p> 
    
             <p>Este trabalho teve como fonte principal o e-Book - Consciência Racial (elaborado pelos colaboradores da Atos) pode ser acessado  
             </p> 

             <a href="https://engage.atos.net/conscienciaracial"><button>Clique aqui</button></a>
        </div>
    </div>

</body>
</html>
