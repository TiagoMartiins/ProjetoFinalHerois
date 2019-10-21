moduleApp.controller("heroiCtrl", heroiCtrl);

heroiCtrl.$Inject = ["$scope", "$location", "heroisService"];


function heroiCtrl($scope, heroisService,$location) {
	const vm = this;
	vm.app = "Heróis";
	vm.service = heroisService;
	vm.herois = [];

	vm.init = function(){
		vm.login = true;
		vm.carregarHerois();
	}


	vm.carregarHerois = function () {
		vm.service.getHerois().success(function (data) {
			vm.herois = data;
		}).error(function (data, status) {
			vm.message = "Aconteceu um problema: " + data;
		});
	};

	vm.irCadastrar = function () {
		vm.cadastrar = true;
		vm.login = false;
	}

	vm.irLogin = function (path) {
		$location.path(path)
	}

}