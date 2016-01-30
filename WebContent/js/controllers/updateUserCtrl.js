angular.module("opining").controller("updateUserCtrl", function($scope, userService, config, $cookies){

	$scope.user = $cookies.getObject("user").user;
	$scope.user.password = window.atob($scope.user.password);

	$scope.doUpdate = function() {
		
		if ($scope.user.password != $scope.confirm_password){
			alert("As senhas não coincidem");
			return;
		}

		var _user = angular.copy($scope.user);

		userService.updateUser(_user).success(function (data, status) {

			var userCookie = $cookies.getObject("user");
			userCookie.user = data;

			$cookies.putObject("user", userCookie);

			window.location = "home.html"
			alert("Usuário atualizado com sucesso!");

		}).error(function(data, status) {
				
			alert(data.message);
		
		});
	}
});