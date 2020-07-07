package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Script.JScript;
import style.Estilo;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");

        boolean logado = (boolean) session.getAttribute("logado");
        if(logado == true){
            String nome = (String) session.getAttribute("nome_usuario");
            String email = (String) session.getAttribute("email_usuario");
        }
        
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Barbearia do ZÉ</title>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                padding: 0px;\n");
      out.write("                margin:0px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    ");
  // metodo que formata o menu 
        out.println(Estilo.estiloMenu());
       // chamando metodo que formata o slide da imagem e os textos
        out.println(Estilo.estiloSlide());
       //chamando css que personaliza as divs de animação
       out.println(JScript.animationCss());
     
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"menu\">");
      out.write("\n");
      out.write("            <ul>");
      out.write("\n");
      out.write("                <li><a href=\"index.jsp\"><img class=\"logo-menu\" src=\"imagens/ddd.png\"></a></li>\n");
      out.write("                <li><a href=\"index.jsp\">inicio</a></li>                    \n");
      out.write("                <li><a href=\"#\">Produtos</a></li>\n");
      out.write("                <li><a href=\"agendamento.jsp\">Agendamento</a></li>\n");
      out.write("                <li><a href=\"sobre.jsp\">sobre</a></li>\n");
      out.write("                <li><a href=\"#\">contato</a></li>\n");
      out.write("                \n");
      out.write("                <li><a href=\"#\">\n");
      out.write("                        ");

                            if(logado != true ){
                            out.println("<div id=\"conta\"></div>");
                            }else {
                                String nome = (String) session.getAttribute("nome_usuario");
                                int indice = 1;
                                out.println(nome);
                            }
                        
      out.write("\n");
      out.write("                </a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("                <div class=\"espacador\"></div>\n");
      out.write("        <div class=\"slide\">\n");
      out.write("            <div class=\"anime-text01\">\n");
      out.write("                <span class=\"frase01\">Cortes<br/>Personalizados</span>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"anime-text02\">\n");
      out.write("                <span class=\"frase02\">Barbeiro<br/> A domicilio</span>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("            <div class=\"div-titulo\">\n");
      out.write("            <h1 class=\"titulo\" style=\"text-align: center;\">O seu estilo te destaca!</h1>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"divizor\"></div>\n");
      out.write("            <div class=\"cont-01\" data-anime=\"left\">\n");
      out.write("                <div class=\"image-cont\" style=\"background: url('imagens/image01.jpg') no-repeat;background-position: center;\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"text-cont left-cont\">\n");
      out.write("                    <span class=\"frase01\" style=\"margin: 20px;\">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"cont-01\" data-anime=\"right\">\n");
      out.write("                <div class=\"image-cont\" style=\"background: url('imagens/image02.jpg') no-repeat;background-size: 100%;\">\n");
      out.write("                </div> \n");
      out.write("                <div class=\"text-cont right-cont\">\n");
      out.write("                <span class=\"frase02\" style=\"margin: 20px;\">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"cont-01\" data-anime=\"left\">\n");
      out.write("                <div class=\"image-cont\" style=\"background: url('imagens/image03.jpg') no-repeat;background-size: 150%;background-position: center;\">\n");
      out.write("                </div> \n");
      out.write("                <div class=\"text-cont left-cont\">\n");
      out.write("                <span class=\"frase01\" style=\"margin: 20px;\">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"cont-01\" data-anime=\"right\">\n");
      out.write("                <div class=\"image-cont\" style=\"background: url('imagens/image04.jpg') no-repeat;background-size: 200%;background-position: center;\">\n");
      out.write("                </div> \n");
      out.write("                <div class=\"text-cont right-cont\">\n");
      out.write("                <span class=\"frase02\" style=\"margin: 20px;\">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"cont-01\" data-anime=\"left\">\n");
      out.write("                <div class=\"image-cont\" style=\"background: url('imagens/image05.jpg') no-repeat;background-size: 120%;background-position: center;\">\n");
      out.write("                </div> \n");
      out.write("                <div class=\"text-cont left-cont\">\n");
      out.write("                <span class=\"frase01\" style=\"margin: 20px;\">A mudança que você buca esta nas mãosdo seu cabeleireiro.</span>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"rodape\">\n");
      out.write("                <div class=\"rodape-center\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("    ");

         out.println(JScript.animationScroll());
            
      out.write("\n");
      out.write("    </body>\n");
      out.write("    \n");
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
