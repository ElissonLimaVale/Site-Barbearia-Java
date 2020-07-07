/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package login;

import static com.sun.xml.ws.security.addressing.impl.policy.Constants.logger;
import conexao.Conector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import javax.jms.ConnectionFactory;

/**
 *
 * @author Elisson Lima Vale
 * @data 09/06/2020
 */
public class Login {
        public static boolean verificaLog(String email, String senha){
            boolean produto = false;
            Connection con = Conector.getConnection();
            try{
                String SQL = "select * from usuario where email = ? and senha = ?";
                PreparedStatement  consulta = con.prepareStatement(SQL);
                consulta.setString(1, email);
                consulta.setString(2, senha);
                ResultSet result = consulta.executeQuery();
                if(result.next()){
                    String test1 = result.getString("email");
                    String test2 = result.getString("senha");
                    if(test1.equals(email) && test2.equals(senha)){
                    produto = true;
                    }
                }
                System.out.println("email verificado ---");
                return produto;
            }catch(Exception ex){
                logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE,null, ex);
                return false;
            }
        }
        public static Usuario selectDados(String email){
            ResultSet dados;
            Usuario DADOS = new Usuario();
            Connection conect = Conector.getConnection();
            try{
            String SQL ="Select * from usuario where email = ?";
            PreparedStatement retorno = conect.prepareStatement(SQL);
            retorno.setString(1, email);
            dados = retorno.executeQuery();
            if(dados.next()){
                DADOS.setId(dados.getInt("id"));
                DADOS.setNome(dados.getString("nome"));
                DADOS.setEmail(dados.getString("email"));
                DADOS.setSenha(dados.getString("senha"));
            }
            else{
                DADOS = null;
            }
            }catch(SQLException ex){
            logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE,null, ex);
            }
            return DADOS;
        } 
}   

