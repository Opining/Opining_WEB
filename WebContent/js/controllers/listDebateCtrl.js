angular.module("opining").controller("listDebateCtrl", function($scope, polarizedRoomService, config, $cookies){

	$scope.polarized_debates = [];
	$scope.user = $cookies.getObject("user").user;

	var loadDebates = function () {

		polarizedRoomService.listRooms().success(function (data, status) {

			$scope.polarized_debates = data;

		}).error(function(data, status) {
				
			alert("Ocorreu um erro no servidor. Tente novamente mais tarde.");
			
		});
	};

	$scope.doLogout = function () {
		$cookies.remove("user");
		window.location = "index.html";
	};

	loadDebates();
});