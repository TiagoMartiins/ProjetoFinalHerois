package com.stefanini.hackaton.persistence;

import java.util.List;

import javax.persistence.NoResultException;

import com.stefanini.hackaton.entities.Heroi;
import com.stefanini.hackaton.entities.Jogador;
import com.stefanini.hackaton.rest.exceptions.NegocioException;

public class JogadorDAO extends GenericDAO<Integer, Jogador> {
	
	public Jogador findByNickname (String nickname) throws NegocioException{
	
		return 	(Jogador) getEntityManager().createNamedQuery("Jogador.getByNickname")
					.setParameter("nickname", nickname)
					.getSingleResult();
		
		
		
	}
	
	public Jogador login(Jogador jogador) throws NegocioException{
		return (Jogador) getEntityManager().createNamedQuery("Jogador.login")
				.setParameter("nickname", jogador.getNickname())
				.setParameter("senha", jogador.getSenha())
				.getSingleResult();
		
	}


}
