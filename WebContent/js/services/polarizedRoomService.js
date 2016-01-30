angular.module("opining").factory("polarizedRoomService", function($http, config){

	var _listRooms = function(){
		return $http.post(config.baseUrl() + "/debate/polarized/listDebates")
	}

	return {
		listRooms: _listRooms
	};
});