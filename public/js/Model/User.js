class User 
{

     getUsers($http) {

        $http({
            method: 'POST',
            url: 'http://localhost/todo/public/getUsers',
          }).then(function successCallback(response) {

              return "asas";

            }, function errorCallback(response) {

                console.log(response);              

            });

     } 



}