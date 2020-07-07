<%@page import="java.sql.SQLException"%>
<%@page import="util.DBConnection"%>
<%@page import="Agenda.Agendas"%>
<jsp:useBean id="item" class="Agenda.Agendas" />

<jsp:setProperty name="item" property="*"/>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/mensagem.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agendado Com Sucesso!</title>
</head>
<body>
<% 
    String nome = request.getParameter("nome");
    String tipo = request.getParameter("tipodocorte");
    String dia = request.getParameter("diadocorte");
    if(nome.equals("") || tipo.equals("") || dia.equals("") ){
            throw new Exception("Dados incompletos!");
        }
    else{
        Agendas agenda = new Agendas();
        agenda.setNome(nome);
        agenda.setTipodocorte(tipo);
        agenda.setDiadocorte(dia);
        try {
            DBConnection dbconnection = new DBConnection();
            
            dbconnection.adiciona(agenda);
            String msg = null;
            request.setCharacterEncoding("UTF-8");
        }catch (SQLException ex) {
            throw new RuntimeException("Falha ao agendar.", ex);
        }
    }
%>
     <div class="container">
        <div class="content first-content">
            <div class="first-column">
                <h2 class="title title-primary">Agendado com Sucesso!</h2>
                <p class="description description-primary">Nome: <%=item.getNome()%></p>
                <p class="description description-primary">Dia do corte:<%=item.getDiadocorte()%> </p>
                <p class="description description-primary">Tipo de corte:<%=item.getTipodocorte()%></p>
                
                <a href="index.jsp"><button id="signin" class="btn btn-primary">Pronto!</button></a>
            </div>    
        </div> 
    </div> 
</body>
</html>
