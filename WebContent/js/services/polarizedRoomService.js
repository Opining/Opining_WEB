angular.module("opining").factory("polarizedRoomService", function($http, config){

	var _listRooms = function(){
		return $http.post(config.baseUrl() + "/debate/polarized/listDebates")
	}
	
	var _createRoom = function(room){
		return $http.post(config.baseUrl() + "/debate/polarized/createDebate", room)
	}
	
	return {
		listRooms: _listRooms,
		createRoom: _createRoom
	};
});