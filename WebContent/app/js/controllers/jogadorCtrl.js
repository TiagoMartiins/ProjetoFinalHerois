moduleApp.controller("JogCtrl", JogCtrl);

JogCtrl.$Inject = ["$scope", "$location", "jogadorService"];

function JogCtrl($scope, $location, jogadorService) {
    const self = this;

    self.jogador = {
        nickname: null,
        senha: null,
        heroi: {}
    };

    self.jogadores = [];

    self.init = function(){
		self.carregarJogadores();
	}

    self.login = function (jogador) {
        console.log(jogador);
        jogador.senha = btoa(jogador.senha);
        jogadorService.login(jogador)
            .then(function (response) {
                jogadorService.jogador = response.data;
                alert("Logado com Sucesso");
                $location.path("/batalha");
            }, function(error){
                alert(error.data.mensagem);
            });
    };

    self.carregarJogadores = function () {
		jogadorService.getJogadores().success(function (data) {
			self.jogadores = data;
		}).error(function (data, status) {
			vm.message = "Aconteceu um problema: " + data;
		});
	};

    self.cadastrar = function(jogador){
        jogador.senha = btoa(jogador.senha);
        jogadorService.inserirJogador(jogador)
        .then(function(response) {
            alert("Cadastrado com Sucesso");
            $location.path("/login");
        }, function(error) {
           alert(error.data.mensagem);
        });
    };

    self.irTelaCadastrar = function () {
        $location.path('/cadastrar');
    }

    self.logout = function(){
        jogadorService.jogador = null;
        $location.path('/');
    }
}