package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import style.Estilo;

public final class agendamento_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<style>\n");
      out.write("    .menu ul {\n");
      out.write("        margin-top: 15px;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("    ");
 
    out.println(Estilo.estiloMenu());
    out.println(Estilo.agenda());
    out.println(Estilo.agendamento());
    
      out.write(" \n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("   <div class=\"menu\">");
      out.write("\n");
      out.write("            <ul>");
      out.write("\n");
      out.write("                <li><a href=\"index.jsp\"><img class=\"logo-menu\" src=\"imagens/ddd.png\"></a></li>\n");
      out.write("                <li><a href=\"index.jsp\">inicio</a></li>                    \n");
      out.write("                <li><a href=\"#\">Produtos</a></li>\n");
      out.write("                <li><a href=\"agendamento.jsp\">Agendamento</a></li>\n");
      out.write("                <li><a href=\"sobre.jsp\">sobre</a></li>\n");
      out.write("                <li><a href=\"#\">contato</a></li>\n");
      out.write("                <li><a href=\"#\"><div id=\"conta\"></div></a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"content first-content\">\n");
      out.write("            <div class=\"first-column\">\n");
      out.write("                <h2 class=\"title title-primary\">Bem-Vindo a tela de agendamento!</h2>\n");
      out.write("                <p class=\"description description-primary\">aqui você faz seu agendamento online</p>\n");
      out.write("                <p class=\"description description-primary\">Só precisa esta logado para marcar sua agenda</p>\n");
      out.write("                <a href=\"#\"><button id=\"signin\" class=\"btn btn-primary\">Fazer login</button></a>\n");
      out.write("            </div>    \n");
      out.write("        <div class=\"second-column\">\n");
      out.write("        <h2 class=\"title title-second\">Agendamento</h2>\n");
      out.write("        <p class=\"description description-second\">Insira os dados abaixo:</p>\n");
      out.write("        <form class=\"form\" name=\"agendar\" method=\"post\" action=\"Exibe_Mensagem.jsp\">\n");
      out.write("            <label class=\"label-input\">\n");
      out.write("                <i class=\"far fa-user icon-modify\"></i>\n");
      out.write("                <input type=\"text\" placeholder=\"Name\" name=\"nome\" required>\n");
      out.write("            </label>\n");
      out.write("            <div id=\"corte\"><p>Corte</p></div>\n");
      out.write("            <label class=\"label-input\" >\n");
      out.write("                <i class=\"far fa-envelope icon-modify\"></i>\n");
      out.write("            </label>\n");
      out.write("            <div id=\"tipodcorte\">\n");
      out.write("                <select name=\"tipodocorte\" required> \n");
      out.write("                    <option>Curto social</option>\n");
      out.write("                    <option>Corte e progressiva</option>\n");
      out.write("                    <option>Degradê desenhado</option>\n");
      out.write("                    <option>Personalizado...</option>\n");
      out.write("                </select>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"diadocorte\"><p>Dia do corte</p></div>\n");
      out.write("            <label class=\"label-input\">\n");
      out.write("                <i class=\"fas fa-lock icon-modify\"></i>\n");
      out.write("                <input type=\"datetime-local\" placeholder=\"Diadocorte\" name=\"diadocorte\" required>\n");
      out.write("            </label>\n");
      out.write("            <button class=\"btn btn-second\" type=\"submit\" name=\"operacao\">Agendar</button> \n");
      out.write("            <input type=\"hidden\" name=\"operacao\" value=\"Inserir\">\n");
      out.write("        </form>\n");
      out.write("        </div><!-- second column -->\n");
      out.write("    </div><!-- first content -->\n");
      out.write(" </div><!-- second column -->\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
