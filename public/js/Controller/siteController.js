var app = angular.module('toDoApp', []);

app.controller('siteCtrl', function($scope, $http) {

$scope.url = "HTMLviews/shoppingBasket.htm";
/// WCZYTYWANIE MENU
$scope.menu = function(todo){
    
    $scope.url = `HTMLviews/${todo}.htm`;
    console.log($scope.url);
}

});