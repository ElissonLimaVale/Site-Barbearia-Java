/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package util;

import Agenda.Agendas;
import conexao.Conector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnection {
     // configurações para conexão com o bando de dados MySQL
    private final Connection conexao;
    private String status;
    
    public  DBConnection() throws SQLException {
        this.conexao = new Conector().getConnection();
    }
    public String adiciona (Agendas agenda){
        try {
            // Declaração da variável para a instrução SQL
            String sql = "insert INTO AgendaDeCorte(nome, TipoDeCorte, DataDoCorte) VALUES (?, ?, ?)";
            // Atribui os valores ao objeto ps
            try (PreparedStatement ps = conexao.prepareStatement(sql)) {
                // seta os valores
                ps.setString(1, agenda.getNome());
                ps.setString(2, agenda.getTipodocorte());
                ps.setString(3, agenda.getDiadocorte());
                // Executa o sql (execute)
                ps.execute();
                // Fecha o ps
                ps.close();
            }
            // Fecha a conexão
            conexao.close();
            // Retorna o status da inserção
            status = "Agendamento [" + agenda.getNome() + "] inserido com sucesso";
        } catch (SQLException ex) {
            // Captura o erro ocorrido e retorna para o Controller
            status = "Erro ao inserir agendandamento[" + ex.getMessage() + "]";
        }
        return status;
    }
}
    

    
    
    
    
   
