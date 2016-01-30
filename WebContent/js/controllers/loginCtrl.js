angular.module("opining").controller("loginCtrl", function($scope, userService, config, $cookies){

	$scope.doLogin = function (user) {

		var _user = angular.copy(user);

		userService.doLogin(_user).success(function (data, status) {

			$cookies.putObject("user", data);
			window.location = "home.html";

		}).error(function(data, status) {
				
			alert(data.message);
			delete user.password;
			
		});
	};

});