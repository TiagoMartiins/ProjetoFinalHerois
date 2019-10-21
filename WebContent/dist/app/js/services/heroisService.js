moduleApp.factory("heroisService", function ($http) {

	const baseUrl = 'http://localhost:8080/curso-hackaton-cdi/heroi';

	const _getHerois = function () {
		return $http.get(baseUrl);
	};

	return {
		getHerois: _getHerois
	};	
});