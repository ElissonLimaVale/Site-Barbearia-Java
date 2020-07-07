/* essae do prjeto
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package style;

/**
 *
 * @author Elisson Lima Vale
 * @data 21/05/2020
 */
public class Estilo {
    public static String estiloMenu(){
        String estilo = "<style> .menu li{list-style: none;float: left;font-size: 26px;padding: 5px 30px 5px 30px;";
            estilo += "display: block;}";
            estilo += " .menu {display: flex;justify-contnt: center;}.menu ul {width: 90%;height: 50px;margin: auto;}";
            estilo += ".menu ul ul li#logar {background-color: black;transition: .5s;} .menu ul{ padding: 0;} .menu ul ul{ display: none;}";
            estilo += ".menu ul li:hover > ul {display: block;}";
           estilo = estilo + ".menu li a {color: rgb(220, 220, 220,.7);text-decoration: none;transition: .4s;font-family: impact;}";
           estilo = estilo + ".menu li a:hover{color: rgb(254, 150, 3);}";
           estilo += ".logo-menu {position: relative;top: -30px;}";
           estilo = estilo + ".menu {position: absolute;margin: 0px;width: 100%; height: 80px;background-color: #000000;}";
           estilo += "#conta {background-image: url('imagens/kkk.png');background-size: 100%;width: 50px;";
           estilo += "height: 50px;border-radius: 50%;} </style>"; 
           return estilo;
            }
        public static String estiloSlide(){
          String estilo;
          estilo = "<style> .slide {border-radius: 20px; width: 98%;height: 500px;background-image: url('imagens/fff.jpg');background-position: 100%;";
          estilo += "background-size: 90%;animation: init 2s linear;margin: 0px auto 0px auto;}";
          estilo += "@keyframes init{0% {background-size: 100%;}50% {background-size: 95%;}100% {background-size: 90%;}} ";
          
          estilo += ".anime-text01{ width: 400px;height: 150px;background-color: #fe9603;position: absolute;right: 180px;top: 150px;";
          estilo += "border-radius: 10px;animation: init-frase01 2s linear;padding-left: 30px;padding-top: 20px;}";
          
          estilo +=  ".frase01{color: #ffffff;position: absolute;font-size: 50px;font-family: impact;opacity: 1;";
          estilo += "text-shadow: 10px 3px 3px rgb(0,0,0,.6);}";
          
          estilo += "@keyframes init-frase01 {0%{right: 0px;opacity: 0%;}";
          estilo += "50%{right: 100px;opacity: 30%;}100%{right: 180px;opacity: 90%;}} ";
          
           estilo += ".anime-text02{ width: 380px;height: 150px;background-color: #ffffff;position: absolute;right: 150px;top: 350px;";
          estilo += "border-radius: 10px;animation: init-frase02 2s linear;padding-left: 30px;}";
          
          estilo += ".frase02{color: #fe9603;font-size: 60px;font-family: impact;";
          estilo += "opacity: 1;text-shadow: 10px 3px 3px rgb(0,0,0,.6);}";
          
          estilo +=  " @keyframes init-frase02 {0%{right: 0px;opacity: 0%;}";
          estilo += "50%{right: 100px;opacity: 30%;}100%{right: 150px;opacity: 90%;}}";
          
          estilo += ".espacador {height: 90px;}";
          
          // personalizando os divizores de conteudo da pagina
          estilo += ".divizor {width: 80%; height: 2px; background-color: rgb(0,0,0,.8);margin: 5px auto 5px auto;}";
          
          estilo += "</style>";
          
          return estilo;
        }
    public static String agenda(){
        String estilo;
        estilo = "<style> #Agendamento {color: black; width: 300px; height: 100px; font-style: italic;margin: 100px auto 80px; font-size: 20px;}";
        estilo += "#nome {color: black;width: 300px;height: 100px;font-style:italic;margin: 30px auto 80px}";
        estilo += "#nome h1{color: black;font-size: 25px;font-style: italic;width:300px;height:50px;margin:-10px auto 0px}";
        estilo += " #nome p{color: black;width:300px;height:100px;margin:-10px auto 0px}";
        estilo += "#tipodcorte h2{color: black;width:300px;height:100px;font-style: italic;margin: -110px auto 0px ;font-size: 25px;}";
        estilo += "#tipodcorte p{color: black;width:300px;height:100px;margin:-50px auto 0px;}";
        estilo += "#diadcorte h3{color: black;width:300px; height:100px;font-style: italic;margin: -60px auto 0px; font-size: 25px;}"; 
        estilo += "#diadcorte p{width:300px;height:100px; margin: -70px auto 0px;}";
        estilo += "#container{background-color: red;text-align: center;width:400px;height:500px;}";
        estilo += ".centro{width: 100%;height: 700px;display: flex;justify-content: center;}";
        estilo +=  "#agendar{width:300px;height:100px;margin: -50px auto 0px;}";
        estilo += "</style> ";
        
    return estilo;
    }
    
    public static String agendamento(){
        
        String estilo = "<style> *{ margin: 0;padding: 0;}" +
                "body {" +
                "    font-family: 'Open Sans', sans-serif;" +
                "}" +
                ".container {" +
                "    display: flex;" +
                "    justify-content: center;" +
                "    align-items: center;" +
                "    height: 100vh;" +
                "    background-color: rgba(0,0,0,.8);" +
                "}" +
                ".content {" +
                "    background-color: #fe9603;" +
                "    border-radius: 15px;" +
                "    width: 960px;" +
                "    height: 50%;" +
                "    justify-content: space-between;" +
                "    align-items: center;" +
                "    position: relative;" +
                "}.content::before { " +
                "    content: \"\";" +
                "    position: absolute;" +
                "    background-color: #58af9b;" +
                "    width: 40%;" +
                "    height: 100%;" +
                "    border-top-left-radius: 15px;\n" +
                "    border-bottom-left-radius: 15px;\n" +
                "    left: 0;\n" +
                "}\n" +
                ".title {\n" +
                "    font-size: 28px;\n" +
                "    font-weight: bold;\n" +
                "    text-transform: capitalize;\n" +
                "}\n" +
                ".title-primary {\n" +
                "    color: #fff;\n" +
                "}\n" +
                ".title-second {\n" +
                "    color: white;\n" +
                "}\n" +
                ".description {\n" +
                "    font-size: 14px;\n" +
                "    font-weight: 300;\n" +
                "    line-height: 30px;\n" +
                "}\n" +
                ".description-primary {\n" +
                "    color: #fff;\n" +
                "}\n" +
                ".description-second {\n" +
                "    color: white;\n" +
                "}\n" +
                ".btn {\n" +
                "    border-radius: 15px;\n" +
                "    text-transform: uppercase;\n" +
                "    color: #fff;\n" +
                "    font-size: 10px;\n" +
                "    padding: 10px 50px;\n" +
                "    cursor: pointer;\n" +
                "    font-weight: bold;\n" +
                "    width: 150px;\n" +
                "    align-self: center;\n" +
                "    border: none;\n" +
                "    margin-top: 1rem;\n" +
                "}\n" +
                ".btn-primary {\n" +
                "    background-color: transparent;\n" +
                "    border: 1px solid #fff;\n" +
                "    transition: background-color .5s;\n" +
                "}\n" +
                ".btn-primary:hover {\n" +
                "    background-color: #fff;\n" +
                "    color: #58af9b;\n" +
                "}\n" +
                ".btn-second {\n" +
                "    background-color: #58af9b;\n" +
                "    border: 1px solid #58af9b;\n" +
                "    transition: background-color .5s;\n" +
                "}\n" +
                ".btn-second:hover {\n" +
                "    background-color: #fff;\n" +
                "    border: 1px solid #58af9b;\n" +
                "    color: #58af9b;\n" +
                "}\n" +
                ".first-content {\n" +
                "    display: flex;\n" +
                "}\n" +
                ".first-content .second-column {\n" +
                "    z-index: 11;\n" +
                "}\n" +
                ".first-column {\n" +
                "    text-align: center;\n" +
                "    width: 40%;\n" +
                "    z-index: 10;\n" +
                "}\n" +
                ".second-column {\n" +
                "    width: 60%;\n" +
                "    display: flex;\n" +
                "    flex-direction: column;\n" +
                "    align-items: center;\n" +
                "}\n" +
                "\n" +
                "\n" +
                ".form {\n" +
                "    display: flex;\n" +
                "    flex-direction: column;\n" +
                "    width: 50%;\n" +
                "}\n" +
                ".form input {\n" +
                "    height: 45px;\n" +
                "    width: 100%;\n" +
                "    border: none;\n" +
                "    background-color: #ecf0f1;\n" +
                "}\n" +
                "\n" +
                ".label-input {\n" +
                "    background-color: #ecf0f1;\n" +
                "    display: flex;\n" +
                "    align-items: center;\n" +
                "    margin: 8px;\n" +
                "}" +
                ".icon-modify {" +
                "    color: #7f8c8d;" +
                "    padding: 0 5px;" +
                "}" +
                "" +
                "/* second content*/" +
                "" +
                ".second-content {" +
                "    position: absolute;" +
                "    display: flex;" +
                "}" +
                ".second-content .first-column {" +
                "    order: 2;" +
                "    z-index: -1;" +
                "}" +
                ".second-content .second-column {" +
                "    order: 1;" +
                "    z-index: -1;" +
                "}" +
                ".password {" +
                "    color: #34495e;" +
                "    font-size: 14px;" +
                "    margin: 15px 0;" +
                "    text-align: center;" +
                "}" +
                ".password::first-letter {" +
                "    text-transform: capitalize;" +
                "}" +
                "" +
                "#tipodcorte{" +
                "  margin-left: 80px;" +
                "    " +
                "     " +
                "}" +
                "#corte{" +
                "   margin-left: 10px; " +
                "}" +
                "" +
                "#diadocorte{" +
                "  margin-left: 10px;  " +
                "}</style>";
    
    return estilo;
    
    }
        public static String estiloLogin(){
         String login =  "<style> .form{padding:10px; width: 400px; height: calc(100% + 30px);left: 500px;top:100px;float: center;position: relative;";
            login += "border-width:5px; border-color: rgba(120,120,120,0.5);border-style: solid; background-color: rgb(254, 150,3);";	
            login += "background-clip:padding-box;border-radius: 30px;}";
            
            login += ".form h2{margin-left:20px;font-weight: normal;color: rgb(0,0,0);font-size: 21px;}";
            login += ".form h3{margin-left:30px;font-weight: normal;color: rgb(0,0,0);font-size: 21px;}";
            login += ".input-container span{display: inline-block;width: 100%;font-size: 17px;}";
            
            
            login += "#senha{margin-top:10px; margin-left:100px;}";
            login += ".form p{display: inline-block;width: 100%;font-size: 17px}";
            login += ".input-container{margin-top:20px;margin-left:20px;}";
            login += ".form .input-submit-container{text-align: center;}";
            login += ".input-container input[type=text]{margin-top:8px;width: 344px;height: 55px;border:1px solid #ccc;}";
            login += ".input-container input[type=email]{margin-top:8px;width: 344px;height: 55px;border:1px solid #ccc;}";
            login += ".input-container input[type=password]{margin-top:8px;width: 344px;height: 55px;border:1px solid #ccc;}";
        
            login += ".input-container span{margin-left:10px;display: inline-block;width: 100%;font-size: 17px;}";
            
            login += ".form input[type=submit]{color: black;font-size: 25px;width: 280px;height: 50px;display: inline-block;";
            login += "background-color: #58af9b;border-radius: 20px;}";
            login += "border-top:0;border-right: 0;border-left: 0;cursor: pointer;border-bottom: 3px solid #4A5097;";
            
            login += ".form input[type=submit]:hover{background-color: orange;}";
            
            login += ".separador{width: 100%;height: 150px;}";
            
            login += ".notific{width: 500px; height: 250px;margin: auto;top: 100px;";
            login += "border: 3px solid rgba(0,0,0,.3); background-color: white;";	
            login += "background-color: rgb(88, 175, 155);border-radius: 50px;";
            login += "display: flex;justify-content: center;}";
            login += ".logo-menu{margin-left:100px;}";
            login += ".mensagem{text-align:center;font-size: 20px;color: black;}";
            
            login += ".mess { color: #f45800;font-family: impact;font-size: 60px;text-align: center;";
            login += "margin-top: 50px;text-shadow: 0px 0px 4px #ffffff;}";
            login += "</style>";
            return login;
    }
        public static String estiloRodape(){
            String estilo = null;
             //estilizando o rodapé da pagina
          estilo = "<style>";
          estilo += ".rodape {height: 200px;width: 100%;background-color: rgb(0,0,0);}";
          estilo += ".rodape-center {background-color: rgb(254,150,3);width: 100%;height:230px;";
          estilo += "display: flex;justify-content: center;position: absolute;}";
          
          estilo += ".ordem {width: 500px; height: 150px;position: absolute;s}";
          
          estilo += "#rodape-link {text-align: center;font-size: 25px;font-family: impact;text-decoration: none;";
          estilo += "margin-left: 120px;margin-top: 20px;}";
          
          estilo += "#rodape-texto{text-align: center;font-size: 25px;font-family: sans;}";
          estilo += "</style>";
            return estilo;
        }
}

