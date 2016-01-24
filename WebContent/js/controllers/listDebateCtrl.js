angular.module("opining").controller("listDebateCtrl", function($scope, polarizedRoomService, config){

	$scope.polarized_debates = [];

	var loadDebates = function () {

		polarizedRoomService.listRooms().success(function (data, status) {

			$scope.polarized_debates = data;

		}).error(function(data, status) {
				
			alert("Ocorreu um erro no servidor. Tente novamente mais tarde.");
			
		});
	};

	loadDebates();
});