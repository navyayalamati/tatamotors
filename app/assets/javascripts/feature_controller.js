(function(angular, app) {
    "use strict";
    app.controller("FeatureController",["$scope","resource", function( $scope ,resource) {
	
	$scope.newFeature = function(){
	    $scope.new_specification = new resource.ProductFeature({passenger_vehicle_id:$scope.passengerVehicleId , feature_type: null, feature: null})
	}
	
	$scope.saveFeature = function(spec){
            spec.$save({passenger_vehicle_id: $scope.passengerVehicleId})
                .then(function(responce){
                    $scope.getSpecifications($scope.productId)
                })
        };

	
    }]);
})(angular, myApp);
