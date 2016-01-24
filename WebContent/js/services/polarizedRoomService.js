angular.module("opining").factory("userService", function($http, config){

	var _listRooms = function(debate){

		debate.password = window.btoa(debate.password);

		return $http.get(config.baseUrl() + "/debate/polarized/listDebates")
	}

	return {
		listRooms: _listRooms
	};
});