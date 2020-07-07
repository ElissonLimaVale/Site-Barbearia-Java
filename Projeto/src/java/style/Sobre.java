/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package style;

/**
 *
 * @author Elisson Lima Vale
 * @data 05/06/2020
 */
public class Sobre {
    public static String estiloSobre(){
        String codigo = "<style>";
        codigo += "body { padding: 0px;margin:0px;}#Campo{width:100%;background-color:#fe9603;";
        codigo += "height: 600px; margin:0px;}.separador{ height: 200px;}.text01{ margin-bottom: 20px; }";
        codigo += ".Dados{padding-left: 100px; font-size:35px;}.Texto{font-size:30px;margin:20px;margin-top:40px;";
        codigo += "padding: 50px;}.Historia{margin:20px;margin-top:100px;font-size:33px;letter-spacing:5px;}";
        codigo += ".divide{color: black;background-color: dimgrey;height: 6px; width: 90%;margin-top: 80px;}";
        codigo += "</style>";
        return codigo;
    }

}
