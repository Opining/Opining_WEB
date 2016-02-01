angular.module("opining").controller("createRoomCtrl", function($scope, config, polarizedRoomService, $cookies){
	
	$scope.maxParticipantsValues = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
	$scope.selectedItem = 1;

	$scope.doCreateRoom = function(room){
		
		room.creator = $cookies.getObject("user").user;
		room.numMaxParticipants = $scope.selectedItem;

		if (room.password != $scope.confirm_password){
			alert("As senhas não coincidem");
			return;
		}

		var _room = angular.copy(room);

		console.log(_room);

		polarizedRoomService.createRoom(_room).success(function (data, status) {

			window.location = "home.html"
			alert("Sala criada com sucesso!");

		}).error(function(data, status) {
				
			alert(data.message);
		
		});
	};
})