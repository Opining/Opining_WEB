angular.module("opining").controller("registerCtrl", function($scope, config, userService){

	$scope.doRegister = function(user){

		var _user = angular.copy(user);

		userService.registerContestant(_user).success(function (data, status) {

			alert("Usuário criado com sucesso");

		}).error(function(data, status) {
				
			alert(data.message);
		
		});
	};
})