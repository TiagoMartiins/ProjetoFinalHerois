package com.stefanini.hackaton.parsers;

import com.stefanini.hackaton.dto.HeroiDto;
import com.stefanini.hackaton.entities.Heroi;

public class HeroiParserDTO extends AbstractParser<HeroiDto, Heroi> {

	@Override
	public HeroiDto toDTO(Heroi entity) {
		HeroiDto dto = new HeroiDto();
		dto.setAtaque(entity.getAtaque());
		dto.setDefesa(entity.getDefesa());
		dto.setId(entity.getId());
		dto.setNome(entity.getNome());
		dto.setPoder(entity.getPoder());
		dto.setVida(entity.getVida());
		return dto;
	}

	@Override
	public Heroi toEntity(HeroiDto dto) {
		Heroi entity = new Heroi();
		entity.setAtaque(dto.getAtaque());
		entity.setDefesa(dto.getDefesa());
		entity.setForca(null);
		entity.setId(dto.getId());
		entity.setInteligencia(null);
		entity.setNome(dto.getNome());
		entity.setPoder(dto.getPoder());
		entity.setVelocidade(null);
		entity.setVida(dto.getVida());
		return entity;
	}

}
