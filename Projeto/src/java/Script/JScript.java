/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Script;

/**
 *
 * @author Elisson Lima Vale
 * @data 21/05/2020
 */
public class JScript {
       public static String animationScroll(){
           String animate = "<script> const selectElement = document.querySelectorAll('[data-anime]');";
           animate += "const animationClass = 'animate';function animeScroll(){";
           animate += "const top = window.pageYOffset + ((window.innerHeight * 3)/ 4);";
           animate += "selectElement.forEach(function(element){ if((top) > element.offsetTop ){";
           animate += "element.classList.add(animationClass);} else{ element.classList.remove(animationClass);";
           animate += "}});} window.addEventListener('scroll', function(){";
           animate += "animeScroll();});</script>";
           return animate;
       }
       public static String animationCss(){
           String codigo = "<style> ";
            codigo += ".cont-01 {background-color: rgb(0,0,0);width: 80%;height: 300px;margin: 50px auto 50px auto;";
            codigo += "border-radius: 15px;padding-top: 1px;border: 2px solid #fe9603;}";
            codigo += " [data-anime]{opacity: 0;transition: .8s;} ";
            codigo += "[data-anime=\"left\"]{transform: translate3d(0px, 0px, 0px);}";
            codigo += " [data-anime=\"right\"]{transform: translate3d(0px, 0px, 0px);}";
            codigo += " [data-anime=\"right\"].animate { opacity: 1;transform:translate3d(-120px, 0px, 0px);} ";
            codigo += "[data-anime=\"left\"].animate {opacity: 1;transform:translate3d(120px, 0px, 0px);}";
            
            // personalizando texto do titulo da pagina
            codigo += ".titulo{color: #fe9603;font-size: 60px;font-family: impact;";
            codigo += "text-shadow: 10px 3px 3px rgb(0,0,0,.6);margin: 0px;}";
            
            codigo += ".div-titulo {width: 100%; height: 80px;padding-top: 10px;}";
            //estilizando a div de imagem dentro do content de rolagem
            codigo += ".image-cont {background-color: #ffffff;width: 300px;height: 280px;border-radius: 8px;";
            codigo += "margin: 10px;border: 2px solid #fe9603;}";
            //estilizando a div de imagem dentro do content de rolagem
            codigo += ".text-cont {width: 644px;height: 272px;position: relative; top: -290px;";
            codigo += "right: 14px;float: right;border-radius: 10px;margin: 0px;display: flex;justify-content: center;}";
            codigo += ".right-cont{background-color: rgb(255, 255, 255);border: 2px solid rgb(254, 150, 3);}";
            codigo += ".left-cont{background-color: rgb(254, 150, 3);border: 2px solid rgb(255, 255, 255);}";
            
            codigo += "</style>";
           return codigo;
       }
}
