
<!DOCTYPE html>

<%@page import="style.Estilo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <%
            String url = null;
            String li1 = null;
            String li2 = null;
            String nome = null;
            String email = null;
            String div = null;
                if(session.getAttribute("logado") != null){
                    email = (String) session.getAttribute("email_usuario");
                    String  primeiro = (String) session.getAttribute("nome_usuario");
                    nome = primeiro.substring(0,primeiro.indexOf(" "));
                    div = " ";
                    url = "logout.jsp";
                    li1 = "Ola, " + nome;
                    li2 = "Sair";
                }else{
                    div = "<p class=\"description description-primary\">Só precisa esta logado para marcar sua agenda</p>\n";
                    div += "<a href=\"login.jsp\"><button id=\"signin\" class=\"btn btn-primary\">Fazer login</button></a>";
                    url = "login.jsp";
                    li1 = "<div id=\"conta\"></div>";
                    li2 = "Entrar";
                }
        %>

<style>
    .menu ul {
        margin-top: 15px;
    }
</style>
    <% 
    out.println(Estilo.estiloMenu());
    out.println(Estilo.agenda());
    out.println(Estilo.agendamento());
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
    <div class="container">
        <div class="content first-content">
            <div class="first-column">
                <h2 class="title title-primary">Bem-Vindo a tela de agendamento!</h2>
                <p class="description description-primary">aqui você faz seu agendamento online</p>
                <%out.print(div);%>
            </div>    
        <div class="second-column">
        <h2 class="title title-second">Agendamento</h2>
        <p class="description description-second">Insira os dados abaixo:</p>
        <form class="form" name="agendar" method="post" action="Exibe_Mensagem.jsp">
            <label class="label-input">
                <i class="far fa-user icon-modify"></i>
                <input type="text" placeholder="Name" name="nome" required>
            </label>
            <div id="corte"><p>Corte</p></div>
            <label class="label-input" >
                <i class="far fa-envelope icon-modify"></i>
            </label>
            <div id="tipodcorte">
                <select name="tipodocorte" required> 
                    <option>Curto social</option>
                    <option>Corte e progressiva</option>
                    <option>Degradê desenhado</option>
                    <option>Personalizado...</option>
                </select>
            </div>
            <div id="diadocorte"><p>Dia do corte</p></div>
            <label class="label-input">
                <i class="fas fa-lock icon-modify"></i>
                <input type="datetime-local" placeholder="Diadocorte" name="diadocorte" required>
            </label>
            <button class="btn btn-second" type="submit" name="operacao">Agendar</button> 
            <input type="hidden" name="operacao" value="Inserir">
        </form>
        </div><!-- second column -->
    </div><!-- first content -->
 </div><!-- second column -->
</body>
</html>

