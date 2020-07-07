/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package email;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.SimpleEmail;


/**
 *
 * @author Elisson Lima Vale
 * @data 11/06/2020
 */
public class Senharec {
    public static boolean enviarSenha(){
            boolean valida;
            System.out.println("executando para o elisson");
            String meuEmail = "MadrugadaZulu@gmail.com";
            String minhaSenha = "#qwaszx1234";
            Email email = new SimpleEmail ();
            email.setHostName ("smtp.gmail.com");
            email.setSmtpPort (465);
            email.setAuthenticator (new DefaultAuthenticator (meuEmail,minhaSenha));
            email.setSSLOnConnect (true);
        try{
            email.setFrom (meuEmail);
            email.setSubject ("Sua senha Barbearia do zè!");
            email.setMsg ("Este é um email de teste ... :-)");
            email.addTo ("elissonllima1@gmail.com");
            email.send();
            System.out.println("executou");
            valida = true;
        return true;
        }catch(Exception ex){
            valida = false;
             System.out.println(ex);
        }
        return valida;
    }
}
