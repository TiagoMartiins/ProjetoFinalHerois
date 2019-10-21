package com.stefanini.hackaton.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.stefanini.hackaton.entities.Jogador;

public class BatalhaDto implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Jogador vencedor;
	private List<String> log = new ArrayList<String>();
	public Jogador getVencedor() {
		return vencedor;
	}
	public void setVencedor(Jogador vencedor) {
		this.vencedor = vencedor;
	}
	public List<String> getLog() {
		return log;
	}


	public void addMsg(String msg) {
		this.log.add(msg);
	}
	
	
	
	

}
