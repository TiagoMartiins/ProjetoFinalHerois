const moduleApp = angular.module('projetoFinal', ['ngRoute']);

moduleApp.run(Run);

Run.$inject = ['$rootScope', '$location', 'jogadorService'];

function Run($rootScope, $location, jogadorService) {
    $rootScope.$on('$routeChangeStart', function (evt, route) {
        if (route.originalPath !== "/cadastrar") {
            if (!jogadorService.jogador) {
                $location.path("/");
            }
        } else {
            if (jogadorService.jogador) {
                $location.path("/home");
            }
        }
    });
}