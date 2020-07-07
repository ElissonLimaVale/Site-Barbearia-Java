<%-- 
    Created on : 14/05/2020, 20:14:48
    Author     : Elisson Lima Vale
--%>
<%@page import="Script.JScript"%>
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
        <title>Barbearia do ZÉ</title>
        <style>
            body {
                padding: 0px;
                margin:0px;
            }
        </style>
    <%  // metodo que formata o menu 
        out.println(Estilo.estiloMenu());
        
        out.println(Estilo.estiloRodape());
       // chamando metodo que formata o slide da imagem e os textos
        out.println(Estilo.estiloSlide());
       //chamando css que personaliza as divs de animação
       out.println(JScript.animationCss());
       
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
                <div class="espacador"></div>
        <div class="slide">
            <div class="anime-text01">
                <span class="frase01">Cortes<br/>Personalizados</span><%-- objeto/tag de id "frase01" onde esta o texto 1 do menu --%>
            </div>
            <div class="anime-text02">
                <span class="frase02">Barbeiro<br/> A domicilio</span><%-- objeto/tag de id "frase02" onde esta o texto 2 do menu --%>
            </div>
        </div>
            <div class="div-titulo">
            <h1 class="titulo" style="text-align: center;">O seu estilo te destaca!</h1>
            </div>
            <div class="divizor"></div>
            <div class="cont-01" data-anime="left">
                <div class="image-cont" style="background: url('imagens/image01.jpg') no-repeat;background-position: center;">
                </div>
                <div class="text-cont left-cont">
                    <span class="frase01" style="margin: 20px;">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>
                </div>
            </div>
            <div class="cont-01" data-anime="right">
                <div class="image-cont" style="background: url('imagens/image02.jpg') no-repeat;background-size: 100%;">
                </div> 
                <div class="text-cont right-cont">
                <span class="frase02" style="margin: 20px;">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>
                </div>
            </div>
            <div class="cont-01" data-anime="left">
                <div class="image-cont" style="background: url('imagens/image03.jpg') no-repeat;background-size: 150%;background-position: center;">
                </div> 
                <div class="text-cont left-cont">
                <span class="frase01" style="margin: 20px;">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>
                </div>
            </div>
            <div class="cont-01" data-anime="right">
                <div class="image-cont" style="background: url('imagens/image04.jpg') no-repeat;background-size: 200%;background-position: center;">
                </div> 
                <div class="text-cont right-cont">
                <span class="frase02" style="margin: 20px;">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>
                </div>
            </div>
            <div class="cont-01" data-anime="left">
                <div class="image-cont" style="background: url('imagens/image05.jpg') no-repeat;background-size: 120%;background-position: center;">
                </div> 
                <div class="text-cont left-cont">
                <span class="frase01" style="margin: 20px;">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>
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
    <%
         out.println(JScript.animationScroll());
    %>
    </body>
    
</html>
