/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package login;


import static com.sun.xml.ws.security.addressing.impl.policy.Constants.logger;
import java.sql.Connection;
import conexao.Conector;
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
public class Cadastro {
    public static boolean cadastrar(Usuario user){ 
           //recebendo a conecxão chamando o metodo da class conector
            
                //capturando os valores do objeto usuario
            String nome = user.getNome();
            String email = user.getEmail();
            String senha = user.getSenha();
            Connection con = Conector.getConnection();
            
            try{
                    //criando String de cadastro no banco de dados
                String SQL = "insert into usuario(nome,email,senha) values (?,?,?)";
                    //preparando o metodo de inserção para setar os valores
                PreparedStatement inserir = con.prepareStatement(SQL);
                    //setando os valores
                inserir.setString(1,nome);
                inserir.setString(2,email);
                inserir.setString(3,senha);
                    //executando cadastro no banco
                inserir.execute();
                Conector.closeConect(con);
                return true;
            }catch(SQLException ex){
                logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE,null, ex);
                return false;
            }
    }
    public static boolean verifica(Usuario user){
            boolean produto = false;
            String nome = user.getNome();
            String email = user.getEmail();
            String senha = user.getSenha();
            Connection con = Conector.getConnection();
            try{
                String SQL = "select * from usuario where email = ? ";
                PreparedStatement  consulta = con.prepareStatement(SQL);
                consulta.setString(1, email);
                ResultSet result = consulta.executeQuery();
                if(result.next()){
                    String teste = result.getString("email");
                    if(teste.equals(email)){
                    produto = true;
                    }
                }
                return produto;
            }catch(Exception ex){
                logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE,null, ex);
                return false;
            }
    }
}
