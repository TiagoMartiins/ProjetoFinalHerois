moduleApp.controller("batalhaCtrl", batalhaCtrl);

batalhaCtrl.$Inject = ["$scope", "$location", "batalhaService","jogadorService"];


function batalhaCtrl($scope, batalhaService,$location,jogadorService) {
	const self = this;

	self.telaVsJogador = true;

	self.acabouBatalha = false;

	self.jogador = jogadorService.jogador;

	self.isEmpate = false;
	
	self.jogador2 = {
		nickname: null,
		heroi: {}
	};

	self.batalha = {
		vencedor : {},
		log : {}
	};

	self.verificarEmpate = function(){
		if(self.batalha.vencedor == null){
				self.isEmpate = true;
		}
		self.acabouBatalha = true;
	}


	self.batalharVsJogador = function (jogador2) {
		batalhaService.batalharVsJogador(self.jogador,jogador2).success(function (data) {
			self.batalha = data;
			self.verificarEmpate();
		}).error(function (data, status) {
			self.message = "Aconteceu um problema: " + data;
		});
	};

	self.batalharVsComputador = function () {
		console.log(self.jogador);
		batalhaService.batalharVsComputador(self.jogador).success(function (data) {
			self.batalha = data;
			self.verificarEmpate();
		}).error(function (data, status) {
			self.message = "Aconteceu um problema: " + data;
		});
	};



	self.irTelaVsComputador = function () {
		self.telaVsComputador = true;
		self.telaVsJogador = false;
		self.batalharVsComputador();
	}

	self.irTelaVsJogador = function () {
		self.telaVsJogador = true;
		self.telaVsComputador = false;
	}

	

}