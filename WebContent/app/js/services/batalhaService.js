moduleApp.factory("batalhaService", function ($http) {

	const baseUrl = 'http://localhost:8080/curso-hackaton-cdi/batalha';
	const computadorUrl = 'http://localhost:8080/curso-hackaton-cdi/batalha/computador';

	const _batalharVsJogador = function (jogador,jogador2) {
		let jogadores = [jogador,jogador2];
		return $http.post(baseUrl,jogadores);
	};

	const _batalharVsComputador = function (jogador) {
		return $http.post(computadorUrl,jogador);
	};

	return {
		batalharVsJogador: _batalharVsJogador,
		batalharVsComputador: _batalharVsComputador
	};	
});