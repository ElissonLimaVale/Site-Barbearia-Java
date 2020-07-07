/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Agenda;

import java.io.Serializable;

/**
 *
 * @author Bruno de Souza Gomes
 * @date  21/05/2020
 * 
 */
public class Agendas implements Serializable {
    private String nome;
    private String tipodocorte;
    private String diadocorte;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTipodocorte() {
        return tipodocorte;
    }

    public void setTipodocorte(String tiposdcorte) {
        this.tipodocorte = tiposdcorte;
    }

    public String getDiadocorte() {
        return diadocorte;
    }

    public void setDiadocorte(String diadcorte) {
        this.diadocorte = diadcorte;
    }

}