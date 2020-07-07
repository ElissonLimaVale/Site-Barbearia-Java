<%-- 
    Created on : 21/05/2020, 14:48:45
    Author     : Eisson Vale
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="style.Estilo"%> 
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
        <style>  
            body {                
                padding: 0px;
                margin:0px;
            }
            #Campo{
                width:auto ;
                background-color:#fe9603;
                hidth:auto;
                padding:100px;
                margin:0px;
                text-align:center;

            }

            .Dados{
                margin-top:90px;
                font-size:50px;
                text-align:center;
                line-height:80px ;

            } 

            .Frase{
                text-align:center;
                font-size:80px;
                margin-top:100px;
                font-style:impact;
            }

            .fundo{
                background-color:silver ;
                margin:auto;
                border-radius: 60px;
                border:black 15px solid ;
                padding:80px;
                width:700px;   
                text-align:center ;
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

        <div id="Campo">   

            <div class="Frase">           
                <h4><u>Entre em contato com a Barbearia</u></h4>
            </div>  
            <img src="tesoura.png" height="100px" width="100px"/>
            <ul class="Dados">
                <div class="fundo">
                    <img src="imagens/whats projeto.png" height="40px;" width="40px;"> <b>WhatsApp:</b>&nbsp;96988-3546<br>
                    <b>Telefone:</b>&nbsp;(11)5073-8466<br>
                    <img src="imagens/insta projeto.png" height="40px;" width="40px;"> <b>Instagram:</b>&nbsp;<b>@</b>BarbeariaZé
                </div>
            </ul>  
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