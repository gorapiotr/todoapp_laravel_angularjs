
app.controller('toDoCtrl', function($scope, $http) {
    
    $scope.archive = [];
    $scope.currentToDos = [];
    $scope.archiveButtonText = "Show Archive";
    $scope.archiveBool = false;
    $scope.editToDoVar = true;
    $scope.currentEditToDo = "";



    $scope.init = function() {     
        this.getToDos();
    };

    $scope.getToDos = function() {

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/getToDo'
          }).then(function successCallback(response) {
            
            $scope.myToDos = response.data;

            //Baza danych zwaraca 1 i 0, funckcja zmienia to na true i false
            angular.forEach($scope.myToDos, function(todo,index)
            {
                $scope.myToDos[index].archive = Boolean($scope.myToDos[index].archive)                
            });


            //Filtrownie todo, ktore sa w archiwum
            $scope.currentToDos = [];

            if($scope.archiveBool === false)
                {
                    angular.forEach($scope.myToDos, function(todo,index){
                        if(todo.archive === false)
                        {
                            $scope.currentToDos.push(todo);
                        }
                    });
                }
            else
                {
                    $scope.currentToDos = $scope.myToDos;
                }        

            }, function errorCallback(response) {
             
            console.log("ERROR getToDos function");
                
            });

    };

    $scope.addNewToDo = function(newToDo) {

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/addToDo',
            data: {todo: newToDo}
          }).then(function successCallback(response) {

                $scope.getToDos();

            }, function errorCallback(response) {
             
            console.log(response);
                
            });

            this.newToDo = ""; // działa na zmienne newToDo, czysci okno po dodaniu do bazy

    }

    $scope.removeToDo = function($id) {

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/removeToDo',
            data: {id: $id}
          }).then(function successCallback(response) {
                
                $scope.getToDos();
                
            }, function errorCallback(response) {
             
            console.log("ERROR addToDos function");
                
            });
    }

    $scope.archiveToDo = function($id, $archive) {
        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/archiveToDo',
            data: {id: $id, archive: $archive}
          }).then(function successCallback(response) {
            if($scope.archiveBool === false)
            {
                $scope.getToDos();
            }   
           
            }, function errorCallback(response) {
             
            console.log("ERROR addToDos function");
                
            });
    }

    $scope.showArchive = function() {
        if($scope.archiveBool === true)
        {
            $scope.archiveButtonText = "Hide Archive";
        }
        else
        {
            $scope.archiveButtonText = "Show Archive";
  
        }    
    }

    $scope.archiveMod = function()  {
        $scope.archiveBool = !$scope.archiveBool;
        $scope.getToDos();
        $scope.showArchive();

    }

    $scope.selectToeditToDos = function(id, content){
        $scope.editToDoVar= !$scope.editToDoVar;
        $scope.currentEditToDo = content;
        $scope.idEditToDo = id;

        window.setTimeout(function() {
            document.getElementById('edit').focus();
          }, 0);
          //console.log(content);
          //console.log($scope.currentEditToDo);
        
    }

    $scope.editToDos = function(){ 
        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/editToDo',
            data: {id: $scope.idEditToDo, edit: $scope.currentEditToDo}
          }).then(function successCallback(response) {
            
                
                $scope.getToDos();  
           
            }, function errorCallback(response) {
             
            console.log("ERROR addToDos function");
                
            });


            $scope.editToDoVar= !$scope.editToDoVar;
    }
 


});