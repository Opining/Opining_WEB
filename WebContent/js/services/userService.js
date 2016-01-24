angular.module("opining").factory("userService", function($http, config){

	var _doLogin = function(user){
		
		user.password = window.btoa(user.password);

		return $http.post(config.baseUrl() + "/acess/login", user)
	}

	var _registerUser = function(user){

		user.password = window.btoa(user.password);

		return $http.post(config.baseUrl() + "/user/create", user)
	}

	var _updateUser = function(user){

		user.password = window.btoa(user.password);

		return $http.post(config.baseUrl() + "/user/update", user)
	}

	return {
		doLogin: _doLogin,
		registerUser: _registerUser,
		updateUser: _updateUser
	};

});