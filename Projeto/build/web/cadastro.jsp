<%@page import="style.Estilo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            body{
                margin: 0px;
                padding: 0px;
                background-color: rgba(0,0,0,.8);
            }
        </style>
            <% out.println(Estilo.estiloMenu());%>
            <% out.println(Estilo.estiloLogin());%>
        
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
        <div>
            <div class="form">
                <h3>Preencha os campos para se cadastrar!</h3>
                <form name="cadastrar" method="post" action="cadastrook.jsp">
                    <div class="input-container">
                        <span>Nome Completo*</span>
                        <input type="text" name="nome" required />
                    </div><!--input-container-->

                    <div class="input-container">
                        <span>E-mail*</span>
                        <input type="email" name="email" required />
                    </div><!--input-container-->

                    <div class="input-container">
                        <span>Senha*</span>
                        <input type="password" name="senha" required />
                    </div><!--input-container-->

                    <p class="warning">*Campos obrigatórios</p>

                    <div class="input-submit-container">
                       <input type="submit" value="Cadastrar"/>
                    </div><!--input-submit-container-->
                </form>
            </div><!--form-->
        </div>            
    </body>
</html>
