<%@page import="style.Estilo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
               <%
            String url = null;
            String li1 = null;
            String li2 = null;
            String nome = null;
            String email = null;
                if(session.getAttribute("logado") != null){
                    email = (String) session.getAttribute("email_usuario");
                    String  primeiro = (String) session.getAttribute("nome_usuario");
                    nome = primeiro.substring(0,primeiro.indexOf(" "));
                    url = "logout.jsp";
                    li1 = "Ola, " + nome;
                    li2 = "Sair";
                }else{
                    url = "login.jsp";
                    li1 = "<div id=\"conta\"></div>";
                    li2 = "Entrar";
                }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{
                margin: 0;
                padding: 0;
                background-color: rgba(0,0,0,.8);
            }
            .campo {
                width: 100%;
            }
            .produto {
                width: 90%;
                height: 400px;
                margin: 5%;
                border-radius: 50px;
                background-color: #58af9b;
                padding: 10px;
            }
            .menu{
                position: absolute;
                top: 0px;
                margin: 0px;
            }
            .separa {
                height: 80px;
            }
            titulo{
                
            }
            .title{
                font-family: impact;
                text-align: center;
                color: rgb(254,150,3);
                font-size: 50px;
                margin: 50px 70px 10px 70px;
            }
            .imagem {
                width: 380px;
                height: 380px;
                border-radius: 50%;
            }
            .foto01 {
                background-image: url('imagens/kit.jpeg');
                background-size: 100%;
            }
            .foto02 {
                background-image: url('imagens/creme2.jpeg');
            }
            .foto03 {
                background-image: url('imagens/test.jpg');
            }
            .foto04 {
                background-image: url('imagens/kit.jpeg');
                background-size: 100%;
            }
            .produto-texto {
                background-color: rgb(254,150,3);
                width: 750px;
                height: 360px;
                margin-top: 20px;
                margin-left: 50px;
                border-radius: 50px;
                
            }
            .div {
                float: left;
            }
            .descricao {
                color: #fff;
                font-size: 60px;
                margin: 50px;
                text-shadow: 0px 0px 4px black;
                font-family: impact;
            }
        </style>
         <% 
            out.println(Estilo.estiloMenu());
            out.println(Estilo.estiloRodape());
         %>
    </head>
    <body>
        <div class="menu"><%-- objeto/tag de classe menu--%>
            <ul><%-- objeto/tag que indica lista ordenada --%>
                <li><a href="index.jsp"><img class="logo-menu" src="imagens/ddd.png"></a></li>
                <li><a href="index.jsp">inicio</a></li>                    
                <li><a href="produtos.jsp">Produtos</a></li>
                <li><a href="agendamento.jsp">Agendamento</a></li>
                <li><a href="sobre.jsp">sobre</a></li>
                <li><a href="contato.jsp">contato</a></li>
                <li><a href="#"><%out.print(li1);%></a>
                    <ul>
                        <li id="logar"><a href="<%out.print(url);%>"><%out.print(li2);%></a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="separa"></div>
        <div class="titulo">
            <h1 class="title">Esses Produtos podes ser comprados Presencialmetente no nosso ponto de atendimento!</h1>
        </div>
        <div class="Campo">   
            <div class="produto">
                <div class="imagem div foto01" id="01"></div>
                <div class="produto-texto div" id="texto04">
                    <p class="descricao">Kit men Cabelos escuros<br/>R$ 150</p>
                </div>
            </div>
            <div class="produto">
                <div class="imagem div foto02" id="02"></div>
                <div class="produto-texto div" id="texto04">
                    <p class="descricao">Kit men Cabelos grisalhos<br/>R$ 134</p>
                </div>
            </div>
            <div class="produto">
                <div class="imagem div foto03" id="03"></div>
                <div class="produto-texto div" id="texto04">
                    <p class="descricao">Kit men Cabelos rececados<br/>R$ 150</p>
                </div>
            </div>
            <div class="produto">
                <div class="imagem div foto04" id="04"></div>
                <div class="produto-texto div" id="texto04">
                    <p class="descricao">Kit men Cabelos longos viking<br/>R$ 150</p>
                </div>
            </div>
        </div>
           
        <div class="rodape">
                <div class="rodape-center">
                <div class="ordem">
                <a id="rodape-link" href="politicaDePrivacidade.jsp">Politica de privacidade</a>
                <p id="rodape-texto">Projeto 1° semestre de 2020 - alunos uninove campos Vergueiro.</p>
                </div>
            </div>
        </div>
    </body>
</html>
