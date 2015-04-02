(function(angular, app) {
    "use strict";
    app.service("resource",["$resource", function($resource) {
        var ProductFeature = $resource('/passenger_vehicle/:passener_vehicle_id/features/:id.json', {id:'@id', passenger_vehicle: '@passenger_vehicle_id'},
				       {
					   "update": { method: "PUT"},
					   "saveFeature":{url: "/passenger_vehicle/:passener_vehicle_id/features/saveFeature.json", method: "POST"}
					   
				       });
        return {
            ProductFeature : ProductFeature
        }
    }]);
})(angular, myApp);
