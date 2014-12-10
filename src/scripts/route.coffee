angular.module 'juloloApp'

.config [
  '$routeProvider'
  (
    $routeProvider
  ) ->
    $routeProvider
    .when '/404',
      templateUrl: './404.html'
    .otherwise redirectTo: '/404'
]