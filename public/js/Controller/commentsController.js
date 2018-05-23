app.controller('commentsCtrl', function($scope, $http, $rootScope) {

    $scope.users = [];
    $scope.showComments = false;

    //Edit Comment
    $scope.editCommentVar = false;

    //Add Comment
    $scope.addNewCommentVar = false;



    $scope.init = function(){

        $scope.getUsers();
    }

    $scope.getUsers = function(){

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/getUsers',
          }).then(function successCallback(response) {

              $scope.users = response.data;
              console.log($scope.users);
            }, function errorCallback(response) {

                console.log(response);              

            });
    }

    $scope.getUserById = function(id){

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/getUserById',
            data: {id: id}
          }).then(function successCallback(response) {

              $scope.currentUserName = response.data.name;
              $scope.showComments = true;
              $scope.addNewCommentVar = true;

            }, function errorCallback(response) {
        

            });
    }

    $scope.getUserComments = function(id){
        
        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/getUserComments',
            data: {id: id}
          }).then(function successCallback(response) {

            $scope.userComments = response.data;
              console.log(response.data);

            }, function errorCallback(response) {
        

            });

    }

    $scope.selectCommentToEdit = function(id, content){
        $scope.editCommentVar = !$scope.editCommentVar;
        $scope.selectedCommentId = id;
        $scope.selectedCommentContent = content;

        window.setTimeout(function() {
            document.getElementById('edit').focus();
          }, 0);

    }

    $scope.editComment = function(comment){
        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/updateComment',
            data: {id: $scope.selectedCommentId, edit:comment}
          }).then(function successCallback(response) {

              $scope.getUserComments($scope.currentUserId);
              $scope.editCommentVar = !$scope.editCommentVar;
              console.log(response.data);

            }, function errorCallback(response) {
        

            });

    }

    $scope.addNewComment = function(id, comment){

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/addComment',
            data: {id: id, content:  comment}
          }).then(function successCallback(response) {

              $scope.getUserComments($scope.currentUserId);
              $scope.newComment = "";

              window.setTimeout(function() {
                document.getElementById('add').focus();
              }, 0);

            }, function errorCallback(response) {
        

            });

    }

    $scope.removeComment = function(id){

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/removeComment',
            data: {id: id}
          }).then(function successCallback(response) {

              $scope.getUserComments($scope.currentUserId);

            }, function errorCallback(response) {
        

            });
        
    }


});