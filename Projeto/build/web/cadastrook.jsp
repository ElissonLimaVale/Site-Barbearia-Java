<%@page import="login.Cadastro" %>
<%@page import="conexao.Conector" %>
<%@page import="login.Usuario"%>
<%@page import="style.Estilo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/mensagem.css">
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
            #signin {
                margin-top: 100px;
            }
        </style>
            <% out.println(Estilo.estiloMenu()); %>
            <% out.println(Estilo.estiloLogin()); %>
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
                <div class="separador"></div>
        <div class="notific">
            <div class="mensagem">
                <%
                    String notific = "";
                    String color = "";
                    String redirect = "";
                    String nome = request.getParameter("nome");
                    String email = request.getParameter("email");
                    String senha = request.getParameter("senha");
                    Usuario user = new Usuario();
                    user.setNome(nome);
                    user.setEmail(email);
                    user.setSenha(senha);
                        //chamando metodo de inserção da classe cadastro
                    boolean validate = Cadastro.verifica(user);
                    if(validate){
                        notific ="E-mail já cadastrado!";
                        color = "style=\"color: red;\" ";
                        redirect = "cadastro.jsp";
                    }
                    else{
                        boolean  result = Cadastro.cadastrar(user);
                        if(result){
                        notific ="Cadastrado com sucesso!";
                        color = "style=\"color: f45800;\" ";
                        redirect = "index.jsp";
                        }else{
                            notific ="Ocorreu um erro ao cadastrar!";
                            color = "style=\"color: red;\" ";
                            redirect = "cadastro.jsp";
                        }
                    }
                   %> 
                
                <div>
                    <h3 class="mess" <%out.println(color);%>><%out.println(notific);%></h3>
                    <a href="<%out.print(redirect);%>"><button id="signin" class="btn btn-primary">voltar</button></a>

                </div>
            </div>
            
        </div>
    </body>
</html>
