@app = angular.module('myApp', ['ngRoute'])

@app.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.otherwise({
    templateUrl: '/templates/home.html',  #Looks in 'public/templates/'
    controller: 'HomeCtrl'
  }) 
])

