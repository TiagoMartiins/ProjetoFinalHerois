package com.stefanini.hackaton.service;

import java.util.Base64;
import java.util.List;

import javax.inject.Inject;
import javax.persistence.NoResultException;
import javax.transaction.Transactional;

import com.stefanini.hackaton.dto.HeroiDto;
import com.stefanini.hackaton.dto.JogadorDto;
import com.stefanini.hackaton.entities.Jogador;
import com.stefanini.hackaton.parsers.JogadorParseDTO;
import com.stefanini.hackaton.persistence.JogadorDAO;
import com.stefanini.hackaton.rest.exceptions.NegocioException;

public class JogadorService {

	@Inject
	JogadorParseDTO parser;
	
	@Inject
	JogadorDAO jogadorDao;

	@Transactional
	public void cadastrar(JogadorDto jogador) throws NegocioException {
		Jogador jogadorE = parser.toEntity(jogador);
		byte[] decodedPasswordBytes = Base64.getDecoder().decode(jogadorE.getSenha());
		String senhaDescriptografada = new String(decodedPasswordBytes);
		try {
		if(findByNickname(jogador.getNickname()) != null) 
			throw new NegocioException("Nickname Já Cadastrado.");
		 }catch(NoResultException e ) {
		if(senhaDescriptografada.length() < 6 || senhaDescriptografada.length() > 8) {
			throw new NegocioException("Senha Tem que ter no minimo 6 e no maximo 8 caracteres ");
		}
		jogadorDao.insert(parser.toEntity(jogador));
		}
		
	}
	
	@Transactional
	public JogadorDto findByNickname(String nickname) throws NegocioException {
		 return parser.toDTO(jogadorDao.findByNickname(nickname));
	}
	
	@Transactional
	public JogadorDto login(Jogador jogador) throws NegocioException{
		
		
		try{
			return parser.toDTO(jogadorDao.login(jogador));
		}catch(NoResultException e) {
			throw new NegocioException("Ops! Seu nickname ou senha estão incorretos!");
		}
	}
	
	public List<JogadorDto> listar() {
		return parser.toDTO(jogadorDao.list());
	}

}
