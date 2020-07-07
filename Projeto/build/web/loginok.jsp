<%@page import="conexao.Conector"%>
<%@page import="login.Login"%>
<%@page import="login.Usuario"%>
<%@page import="style.Estilo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <link rel="stylesheet" type="text/css" href="css/mensagem.css"/>
<%
    String notific =null;
    String notific2 = null;
    String url = null;
    String texto = null;
    String style = null;
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    Usuario Dados = new Usuario();
    boolean result = Login.verificaLog(email, senha);
    if(result){
        Dados = Login.selectDados(email);
        if(Dados == null){
            out.println("<script>alert(\"Acesso NEGADO, senha e/ou email invalidos!\");</script>");
            notific = "Erro:";
            notific2 = "Dados invalidos!";
            url = "login.jsp";
            texto = "Voltar";
            style = "<style> .content::before { background-color: red;}</style>";
        }else{
            session.setAttribute("logado", true);
            session.setAttribute("id_usuario",Dados.getId());
            session.setAttribute("nome_usuario",Dados.getNome());
            session.setAttribute("email_usuario",Dados.getEmail());
            session.setAttribute("senha_usuario",Dados.getSenha());
            String nome = Dados.getNome().substring(0,Dados.getNome().indexOf(" "));
            notific = "ola, " + nome;
            notific2 = "Seja bem vindo!";
            url = "index.jsp";
            texto = "Pronto";
            style = "<style> .content::before { background-color: #58af9b;}</style>";
        }
    }
    else{
        notific = "Erro:";
        notific2 = "Email e/ou senha invalidos!";
        url = "login.jsp";
        texto = "Voltar";
        style = "<style> .content::before { background-color: red;}</style>";
    }
%>
    </head>
    <body>
        <div class="container">
            <div class="content first-content">
                <div class="first-column">
                    <h2 class="title title-primary"><%=notific%></h2>
                    <p class="description description-primary"><%=notific2%></p>
                
                    <a href="<%=url%>"><button id="signin" class="btn btn-primary"><%=texto%></button></a>
                </div>    
            </div> 
        </div> 
                <%=style%>
    </body>
</html>
