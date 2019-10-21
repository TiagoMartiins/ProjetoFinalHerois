package com.stefanini.hackaton.parsers;

import com.stefanini.hackaton.dto.HeroiDto;
import com.stefanini.hackaton.dto.JogadorDto;
import com.stefanini.hackaton.entities.Heroi;
import com.stefanini.hackaton.entities.Jogador;

public class JogadorParseDTO extends AbstractParser<JogadorDto, Jogador> {

	@Override
	public JogadorDto toDTO(Jogador entity) {
		JogadorDto dto = new JogadorDto();
		dto.setHeroi(entity.getHeroi());
		dto.setNickname(entity.getNickname());
		return dto;
	}


	@Override
	public Jogador toEntity(JogadorDto dto) {
		Jogador entity = new Jogador();
		entity.setNickname(dto.getNickname());
		entity.setHeroi(dto.getHeroi());
		entity.setSenha(dto.getSenha());
		return entity;
	}

}
