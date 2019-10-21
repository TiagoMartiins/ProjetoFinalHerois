package com.stefanini.hackaton.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name="jogador")
@NamedQueries({ 
 @NamedQuery(name = "Jogador.getByNickname", query = "SELECT j FROM Jogador j WHERE j.nickname = :nickname"),
 @NamedQuery(name = "Jogador.login", query = "SELECT j FROM Jogador j WHERE j.nickname = :nickname AND j.senha = :senha")

})

public class Jogador implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String nickname;
	private String senha;
	@ManyToOne
	@JoinColumn(name="idHeroi")
	private Heroi heroi;
	
	public Jogador() {
		// TODO Auto-generated constructor stub
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public Heroi getHeroi() {
		return heroi;
	}
	public void setHeroi(Heroi heroi) {
		this.heroi = heroi;
	}
	
	

}
