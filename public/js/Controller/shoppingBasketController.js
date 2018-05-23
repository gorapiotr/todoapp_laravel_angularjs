app.controller('shoppingBasketCtrl', function($scope, $http) {

    $scope.productList =[];

    //$scope.shoppingBasketUrl = 'HTMLviews/shoppingBasket/ProductList.htm';

    $scope.init = function(){
        $scope.getProductList();
        $scope.getUser();
        $scope.changeUrl();
    }

    ///URL///
    $scope.changeUrl = function(url = 'ProductList'){

        $scope.shoppingBasketUrl = `HTMLviews/shoppingBasket/${url}.htm`;

    }


    /////PRODUCTLIST////
    $scope.getProductList = function(){

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/getProductList',
          }).then(function successCallback(response) {

              $scope.productList = response.data;
              $scope.tempArray = $scope.productList;
            
              console.log($scope.productList);
            }, function errorCallback(response) {

                console.log(response);              

            });
    }

    $scope.getUser = function(){

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/getUserById',
            data: {id:3}
          }).then(function successCallback(response) {
            
              console.log(response.data);
              $scope.userID = response.data.id;
              $scope.userName = response.data.name;
              $scope.userCreatedAt = response.data.created_at;


            }, function errorCallback(response) {

                console.log(response);              

            });
    }

    $scope.getUserProductList = function(){
        $scope.getProductList();

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/getUserProductList',
            data: {id: $scope.userID}
          }).then(function successCallback(response) {
            
            $scope.productList = response.data;

            }, function errorCallback(response) {

                console.log(response);              

            });
    }

    $scope.addNewProductToList = function(){
        $scope.productListVar = !$scope.productListVar;


    }

    $scope.buyProduct = function(itemID,userID){
        console.log(itemID + userID);
    }


    /// ADD NEW ITEM ///
    $scope.addNewItem = function(name, category, price, description, amount){
        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/addNewProduct',
            data: {name: name, category:category, price:price, description:description, amount:amount}
          }).then(function successCallback(response) {

            console.log(response);
            $scope.getProductList();
            $scope.changeUrl();

            }, function errorCallback(response) {

                console.log(response);              

            });
    
    }



    /// OTHER FUNCTION ///
    $scope.findProductbyName = function(nameProduct){

        if(nameProduct !=""){
        $scope.productList = [];

        $scope.tempArray.forEach(function(element,index){
            if(element.name ===nameProduct){
                $scope.productList.push(element);
            }
        });
        }else{
            $scope.productList = $scope.tempArray;
        }

    }

});