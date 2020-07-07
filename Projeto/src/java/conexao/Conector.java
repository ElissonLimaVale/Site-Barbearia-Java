/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package conexao;

import static com.sun.xml.ws.security.addressing.impl.policy.Constants.logger;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.ConnectionFactory;

/**
 *
 * @author Bruno de Souza Gomes
 * @date  07/06/2020
 * 
 */
public class Conector {
     
   
    public static Connection getConnection(){
        java.sql.Connection conecta = null;
        final String driver = "com.mysql.jdbc.Driver";
        final String host = "jdbc:mysql://localhost:3306/projeto_sala";
        final String usuario = "root";
        final String senha = "";
        try {
            Class.forName(driver); 
            conecta = DriverManager.getConnection(host,usuario,senha);
            return conecta;
        } catch (Exception ex) {
            System.out.println(conecta);
            logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE,null, ex);
            return null;
        }
    }
    public static void closeConect(Connection con){
        try{
            if(con != null){
                con.close();
            }
        }catch(SQLException ex){
            logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE,null, ex);
        }
    }
}

