package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import style.Estilo;

public final class cadastro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("                margin: 0px;\n");
      out.write("                padding: 0px;\n");
      out.write("                background-color: rgba(0,0,0,.8);\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("            ");
 out.println(Estilo.estiloMenu());
      out.write("\n");
      out.write("            ");
 out.println(Estilo.estiloLogin());
      out.write("\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"menu\">");
      out.write("\n");
      out.write("            <ul>");
      out.write("\n");
      out.write("                <li><a href=\"index.jsp\"><img class=\"logo-menu\" src=\"imagens/ddd.png\"></a></li>\n");
      out.write("                <li><a href=\"index.jsp\">inicio</a></li>                    \n");
      out.write("                <li><a href=\"#\">Produtos</a></li>\n");
      out.write("                <li><a href=\"#\">Agendamento</a></li>\n");
      out.write("                <li><a href=\"#\">sobre</a></li>\n");
      out.write("                <li><a href=\"#\">contato</a></li>\n");
      out.write("                <li><a href=\"#\"><div id=\"conta\"></div></a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div>\n");
      out.write("            <div class=\"form\">\n");
      out.write("                <h3>Preencha os campos para se cadastrar!</h3>\n");
      out.write("                <form name=\"cadastrar\" method=\"post\" action=\"cadastrook.jsp\">\n");
      out.write("                    <div class=\"input-container\">\n");
      out.write("                        <span>Nome Completo*</span>\n");
      out.write("                        <input type=\"text\" name=\"nome\" required />\n");
      out.write("                    </div><!--input-container-->\n");
      out.write("\n");
      out.write("                    <div class=\"input-container\">\n");
      out.write("                        <span>E-mail*</span>\n");
      out.write("                        <input type=\"email\" name=\"email\" required />\n");
      out.write("                    </div><!--input-container-->\n");
      out.write("\n");
      out.write("                    <div class=\"input-container\">\n");
      out.write("                        <span>Senha*</span>\n");
      out.write("                        <input type=\"password\" name=\"senha\" required />\n");
      out.write("                    </div><!--input-container-->\n");
      out.write("\n");
      out.write("                    <p class=\"warning\">*Campos obrigatórios</p>\n");
      out.write("\n");
      out.write("                    <div class=\"input-submit-container\">\n");
      out.write("                       <input type=\"submit\" value=\"Cadastrar\"/>\n");
      out.write("                    </div><!--input-submit-container-->\n");
      out.write("                </form>\n");
      out.write("            </div><!--form-->\n");
      out.write("        </div>            \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
