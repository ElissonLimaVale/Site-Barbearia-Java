<%-- 
    Document   : index
    Created on : 21/05/2020, 14:48:45
    Author     : suelen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="style.Sobre"%>
<%@page import="style.Estilo" %>
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

            <%
                out.println(Estilo.estiloMenu());
                out.println(Sobre.estiloSobre());
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
        <div class="separador"></div>
    <ul class="Dados">
     <li class="text01"><b>Localização:</b>&nbsp;Ibirapuera-Av.Ibirapuera,3103-95, (11)5073-8466</li>
     <li class="text01"><b>Horário de Funcionamento:</b>&nbsp;Aberto das 8:00h-22:00h, todos os dia úteis. </li>
     <li class="text01"><b>Fundacão:</b>&nbsp;20/6/2015</li>
     <li class="text01"><b>Fundadores:</b>&nbsp;Os irmaos Felipe e José dos Campos Alves</li>
    </ul>  
 <div class="hrr">
    <hr class="divide">
 </div>
   <div align="center">
        <div class="espaco">
            <h1 class="Historia">História:</h1>        
                <p class="Texto"><span style=font-size:40px;>A</span> 
                    Barbearia do Zé foi fundada com este nome em homenagem ao nosso pai que se chamava Zé,
                    o sonho dele era abrir uma barbearia e infelizmente não viveu para concretizar este feito.<br>
                    Desde de pequenos aprendemos com nosso pai tudo sobre uma barbearia e agora adultos realizamos 
                    o sonho dele e nos especializamos na Instituição Embelleze.</p>
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
