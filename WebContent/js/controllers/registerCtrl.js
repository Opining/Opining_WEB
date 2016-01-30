angular.module("opining").controller("registerCtrl", function($scope, config, userService){
	
	$scope.doRegister = function(user){

		if ($scope.user.password != $scope.confirm_password){
			alert("As senhas não coincidem");
			return;
		}

		var _user = angular.copy(user);

		userService.registerUser(_user).success(function (data, status) {

			window.location = "index.html"
			alert("Usuário cadastrado com sucesso!");

		}).error(function(data, status) {
				
			alert(data.message);
		
		});
	};
})