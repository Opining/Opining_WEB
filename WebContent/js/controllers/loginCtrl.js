angular.module("opining").controller("loginCtrl", function($scope, userService, config){

	$scope.doLogin = function (user) {

		var _user = angular.copy(user);

		userService.doLogin(_user).success(function (data, status) {

			alert("Logado!");

		}).error(function(data, status) {
				
			alert(data.message);
			delete user.password;
			
		});
	};
});