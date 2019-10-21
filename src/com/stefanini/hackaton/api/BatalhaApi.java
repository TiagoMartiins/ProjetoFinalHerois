package com.stefanini.hackaton.api;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.stefanini.hackaton.dto.BatalhaDto;
import com.stefanini.hackaton.entities.Jogador;
import com.stefanini.hackaton.rest.exceptions.NegocioException;
import com.stefanini.hackaton.service.BatalhaService;
import com.stefanini.hackaton.service.HeroiService;
import com.stefanini.hackaton.service.JogadorService;

@Path("/batalha")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class BatalhaApi {

	@Inject
	private BatalhaService batalhaService;

	
	@POST
	public Response batalhar(List<Jogador> jogadores) throws NegocioException {
		return Response.ok(batalhaService.batalhar(jogadores))
				.build();
	}
	
	@Path("/computador")
	@POST
	public Response batalharComputador(Jogador jogadorPrincipal) throws NegocioException {
		return Response.ok(batalhaService.batalharComComputador(jogadorPrincipal))
				.build();
	}
	

}
