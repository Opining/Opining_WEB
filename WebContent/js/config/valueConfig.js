angular.module("opining").value("config", {
	
	baseUrl: function() {
		
		var _externalUrl = "http://179.181.44.56";
		var _internalUrl = "http://127.0.0.1";
		var _port = "8080";
		var _context = "/Opining_SERVICE"

		var url = location.href;
		
		if (url.indexOf(_externalUrl) >= 0){
			return _externalUrl + ":" + _port + _context;
		} else {
			return _internalUrl + ":" + _port + _context;
		}

	},
})