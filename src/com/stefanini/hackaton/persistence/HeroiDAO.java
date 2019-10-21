package com.stefanini.hackaton.persistence;

import java.util.List;

import com.stefanini.hackaton.entities.Heroi;

public class HeroiDAO extends GenericDAO<Integer, Heroi> {
	
	public List<Heroi> listar(){
		return 	getEntityManager()
				.createNamedQuery("heroi.getAll")
				.getResultList();
	}

}
