package com.stefanini.hackaton.service;

import java.util.List;
import java.util.Random;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.persistence.NoResultException;
import javax.transaction.Transactional;

import com.stefanini.hackaton.dto.BatalhaDto;
import com.stefanini.hackaton.dto.JogadorDto;
import com.stefanini.hackaton.entities.Heroi;
import com.stefanini.hackaton.entities.Jogador;
import com.stefanini.hackaton.parsers.JogadorParseDTO;
import com.stefanini.hackaton.persistence.HeroiDAO;
import com.stefanini.hackaton.persistence.JogadorDAO;
import com.stefanini.hackaton.rest.exceptions.NegocioException;

@Stateless
public class BatalhaService {

	public final int BATALHA_RODADAS = 10;
	public final int BONUS_POR_PODER = 50;
	public final int BONUS_ATAQUE = 1000;
	public final int BONUS_CANSAÇO = 100;
	
	@Inject
	JogadorDAO jogadorDao;
	
	@Inject
	HeroiDAO heroiDao;
	
	Jogador vencedor;
	
	BatalhaDto batalha;
	
	public boolean isJogadorPrincipalWon = false;
	public boolean empate = false;

	
	public BatalhaDto batalhar(List<Jogador> jogadores) throws NegocioException {
		batalha = new BatalhaDto();
		Jogador jogadorPrincipal = jogadores.get(0);
		Jogador inimigo = jogadores.get(1);
		for(int i=0; i<BATALHA_RODADAS; i++) {
			//Jogador 1 atacando
			atacar(jogadorPrincipal,
					inimigo,
					i*jogadorPrincipal.getHeroi().getForca() * BONUS_CANSAÇO,batalha,i+1);
			// Jogador 2 atacando
			atacar(inimigo,
					jogadorPrincipal,
					i*inimigo.getHeroi().getForca() * BONUS_CANSAÇO,batalha,i+1);
			
			if(inimigo.getHeroi().getVida() < jogadorPrincipal.getHeroi().getVida()) 
				isJogadorPrincipalWon = true;
			else
				isJogadorPrincipalWon = false;
			
			if(i==BATALHA_RODADAS -1) {
				if(jogadorPrincipal.getHeroi().getVida() == inimigo.getHeroi().getVida())
					empate = true;
			}
			if(jogadorPrincipal.getHeroi().getVida() <= 0) {
				i= BATALHA_RODADAS -1;
				batalha.addMsg("O jogador "+jogadorPrincipal.getNickname()+" Morreu");
			}else if(inimigo.getHeroi().getVida() <=0) {
				i= BATALHA_RODADAS -1;
				batalha.addMsg("O jogador "+inimigo.getNickname()+" Morreu");
			}
			
		}
		
		if(!empate) {
			
		if(isJogadorPrincipalWon) 
			vencedor = jogadorPrincipal;
		else
			vencedor = inimigo;
		}
		
		if(vencedor != null) 
			batalha.setVencedor(vencedor);
		
		return batalha;
		
	}
	
	public BatalhaDto batalharComComputador(Jogador jogadorPrincipal) throws NegocioException {
		batalha = new BatalhaDto();
		Jogador computador = new Jogador();
		int valorIdAleatorio = new Random().nextInt(249) + 1;
		computador.setNickname("Computador");
		Heroi heroiComputador = heroiDao.findById(valorIdAleatorio);
		computador.setHeroi(heroiComputador);
		
		for(int i=0; i<BATALHA_RODADAS; i++) {
			// Jogador Atacando
			atacar(jogadorPrincipal,
					computador,
					i*jogadorPrincipal.getHeroi().getForca() * BONUS_CANSAÇO,batalha,i+1);
			//Computador Atacando
			atacar(computador,
					jogadorPrincipal,
					i*computador.getHeroi().getForca() * BONUS_CANSAÇO,batalha,i+1);
			
			if(computador.getHeroi().getVida() < jogadorPrincipal.getHeroi().getVida()) 
				isJogadorPrincipalWon = true;
			else
				isJogadorPrincipalWon = false;
			
			if(i==BATALHA_RODADAS -1) {
				if(jogadorPrincipal.getHeroi().getVida() == computador.getHeroi().getVida())
					empate = true;
			}
			if(jogadorPrincipal.getHeroi().getVida() <= 0) {
				i= BATALHA_RODADAS -1;
				batalha.addMsg("O jogador "+jogadorPrincipal.getNickname()+" Morreu");
			}else if(computador.getHeroi().getVida() <=0) {
				i= BATALHA_RODADAS -1;
				batalha.addMsg("O Computador Morreu");
			}
		}
		
		if(!empate) {
			
			if(isJogadorPrincipalWon) 
				vencedor = jogadorPrincipal;
			else
				vencedor = computador;
			}
		
		if(vencedor != null) 
			batalha.setVencedor(vencedor);
		
		return batalha;
			
		
	}
	
	public void atacar(Jogador jogadorPrincipal, Jogador inimigo, int cansaço,BatalhaDto batalha,int index) {
		int ataqueTotal = 0;
		int vidaNova = 0;
		int defesa = inimigo.getHeroi().getDefesa();
		int ataque = jogadorPrincipal.getHeroi().getAtaque();
			
			if(inimigo.getHeroi().getPoder() > jogadorPrincipal.getHeroi().getPoder()) 
				ataqueTotal = (ataque * BONUS_ATAQUE) - (defesa * BONUS_POR_PODER);
			else 
				ataqueTotal = (ataque * BONUS_ATAQUE * BONUS_POR_PODER) - (defesa);
			
			ataqueTotal = ataqueTotal - cansaço;
			System.out.println("CANSAÇO  " + cansaço);
			vidaNova = inimigo.getHeroi().getVida() - ataqueTotal;
			inimigo.getHeroi().setVida(vidaNova);
			batalha.addMsg("--------Rodada "+index+" ------");
			batalha.addMsg("Nome do Jogador Principal : " + jogadorPrincipal.getNickname());
			batalha.addMsg("Ataque do Jogador Principal : " + ataqueTotal);
			batalha.addMsg("A vida do inimigo está em : "+ vidaNova);
			batalha.addMsg("O Cansaço que o Jogador Principal teve foi de : "+cansaço);
	}
	
	
	


}
