moduleApp.config(Config);

Config.$inject = ["$routeProvider"];

function Config($routeProvider) {
    $routeProvider
        .when("/", {
            templateUrl: "app/html/login.html",
            controller: "JogCtrl as jogCtrl"
        })
        .when("/cadastrar", {
            templateUrl: "app/html/cadastrar.html",
            controller: "heroiCtrl as vm"
        })
        .when("/batalha",{
            templateUrl: "app/html/batalha.html",
            controller: "batalhaCtrl as btCtrl"
        })
        .otherwise({
            redirectTo: "/"
        });
}