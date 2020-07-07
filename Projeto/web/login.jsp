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
                <h2 class="h2login">Preencha os campos para efetuar o login!</h2>
                <form name="login" method="post" action="loginok.jsp">
                    <div class="input-container">
                        <span>E-mail*</span>
                        <input type="email" name="email" placeholder="E-mail" required />
                    </div><!--input-container-->

                    <div class="input-container">
                        <span>Senha*</span>
                        <input type="password" name="senha" placeholder="Senha"  required />
                    </div><!--input-container-->

                    <p class="warning">*Campos obrigatórios</p>

                    <div class="input-submit-container">
                        <input type="submit" value="Entrar">
                    </div><!--input-submit-container-->
                    <div id="senha">
                        Esqueceu a senha? <a Style="text-decoration: none;color: red;" href="senharec.jsp">Clique aqui</a>
                    </div>
                </form>
                <hr>
                <p>Não possui conta? Cadastre-se abaixo</p>
                <div class="input-submit-container">
                    <a href="cadastro.jsp"><input type="submit" name="cad" value="Cadastrar"></a>
                </div><!--input-submit-container-->
            </div><!--form-->
        </div>
    </body>
</html>
