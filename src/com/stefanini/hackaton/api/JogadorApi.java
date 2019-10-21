package com.stefanini.hackaton.api;

import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.stefanini.hackaton.dto.JogadorDto;
import com.stefanini.hackaton.entities.Jogador;
import com.stefanini.hackaton.rest.exceptions.NegocioException;
import com.stefanini.hackaton.service.HeroiService;
import com.stefanini.hackaton.service.JogadorService;

@Path("/jogador")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class JogadorApi {

	@Inject
	private JogadorService jogadorService;

	
	@POST
	public Response cadastrar(JogadorDto jogadorDto) throws NegocioException {
		jogadorService.cadastrar(jogadorDto);
		return Response.ok().build();
	}
	
	@Path("/autenticar")
	@POST
	public Response login(Jogador jogador) throws NegocioException {
		return Response.ok(jogadorService.login(jogador)).build();
	}
	
	@GET
	public Response listar() {
		return Response.ok(jogadorService.listar()).build();
	}

}
