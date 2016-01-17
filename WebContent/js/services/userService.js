angular.module("opining").factory("userService", function($http, config){

	var _doLogin = function(user){
		
		var password = window.btoa(user.password);

		return $http.post(config.baseUrl() + "/acess/login", user)
	}

	var _registerContestant = function(user){

		var password = window.btoa(user.password);

		return $http.post(config.baseUrl() + "/user/create", user)
	}

	return {
		doLogin: _doLogin,
		registerContestant: _registerContestant
	};

});