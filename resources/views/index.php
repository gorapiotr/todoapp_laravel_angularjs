<!DOCTYPE html>
<html>
<head>
    <title>To Do App</title>
</head>
<body>


<div ng-app="toDoApp" ng-controller="siteCtrl" >

    <!-- MENU -->
        <div ng-include="'HTMLviews/menu.htm'"></div>
    <!-- BANER -->
        <div class="jumbotron text-center" style="margin-top: 3.5%">
            <h1>To Do App</h1> 
        </div>
    <!-- TODOs PART -->    
        <div class="container">
            <div class="row">
                <!-- Column 1-->
                    <div class="col-sm-2">
                        <h3>Menu</h3>
                        <p>----1----</p>
                        <p>----2----</p>
                        <p>----3----</p>
                        <p>----4----</p>
                        <p>----5----</p>
                    </div>
                <!-- Column 2 and Column 3-->
                <div ng-include="url"></div>
            </div>
            
    </div>
</div>


<!-- AngularJS lib -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>

<!-- Bootstrap lib -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">




<!-- Controllers -->
<script src="<?= asset('js/Controller/siteController.js') ?>"></script>
<script src="<?= asset('js/Controller/toDoController.js') ?>"></script>
<script src="<?= asset('js/Controller/commentsController.js') ?>"></script>
<script src="<?= asset('js/Controller/userController.js') ?>"></script>
<script src="<?= asset('js/Controller/shoppingBasketController.js') ?>"></script>

<!-- Model -->

<script src="<?= asset('js/Model/User.js') ?>"></script>


</body>
</html>