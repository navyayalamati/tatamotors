(function(angular, app) {
    "use strict";
    app.controller("FeatureController",["$scope","resource", function( $scope ,resource) {
	
	$scope.getSpecifications = function(passengerVehicleId){
            console.log(resource.ProductFeature)
            $scope.ProductFeatures = resource.ProductFeature.query({passenger_vehicle_id: passengerVehicleId});
            $scope.passengerVehicleId = passengerVehicleId;
        }

	$scope.newFeature = function(){
	    $scope.new_specification = new resource.ProductFeature({passenger_vehicle_id:$scope.passengerVehicleId , feature_type: null, feature: null})
	}
	
	$scope.saveFeature = function(spec){
            spec.$save({passenger_vehicle_id: $scope.passengerVehicleId})
                .then(function(responce){
		    $scope.getSpecifications($scope.passengerVehicleId)
                })
        };

	
    }]);
})(angular, myApp);
