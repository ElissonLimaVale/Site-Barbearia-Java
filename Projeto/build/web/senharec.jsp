<%@page import="style.Estilo"%>
<%@page import="email.Senharec"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                margin: 0px;
                padding: 0px;
                background-color: rgba(0,0,0,.8);
            }
        <% out.println(Estilo.estiloMenu()); %>
        <% out.println(Estilo.estiloLogin()); %>
        </style>
    </head>
<body>
   <div>
    <div class="form">
        <h2 class="h2login">Informe o e-mail</h2>
            <form>
		<div class="input-container">
		<span>E-mail*</span>
                <input type="email" name="email" required />
		</div><!--input-container-->
                
                <p class="warning">*Campos obrigatórios</p>

		<div class="input-submit-container">
		<input type="submit" name="senha" value="Enviar">
		</div><!--input-submit-container-->
            </form>
    </div><!--form-->
    <%
        boolean result;
        result = Senharec.enviarSenha();
        if(result){
            out.print("<script>alert(\"Ocorreu um erro!\");</script>");
        }else{
            out.print("<script>alert(\"email enviado!\");</script>");
        }
                out.print("<script>alert(\"esta par do projeto anda esta em processo de desenvolvimento!\");</script>");

    %>
</div>            
</body>
</html>
