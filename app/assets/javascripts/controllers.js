

var presskitApp = angular.module('presskitApp',[]);

presskitApp.controller('ReleasesListCtrl', function ($scope, $http) {
	  $http.get('/welcome.json')
	  .success( function(data, status, headers, config) {
	  	$scope.releases = data;   
	   }); 
});

