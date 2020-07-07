<%-- 
    Created on : 10/06/2020, 13:06:29
    Author     : Elisson Vale
--%>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>