angular.module 'juloloApp'

.run [
  '$rootScope'
  '$location'
  'Auth'
  'g'
  (
    $rootScope
    $location
    Auth
    g
  ) ->
    $rootScope.$on '$locationChangeStart', ->
      pathList = [
        '/login'
        '/register'
      ]

      isInPathList = do ->
        for path in pathList
          url = $location.url()
          reg = new RegExp path
          return ture if reg.test url
        false

      if Auth.isLogged()
        unless g.inited
          g.init()
          .then (cont, cb) ->
            $location.path '/' if isInPathList
          .fail (cont, error) ->
            console.error error
        else
          $location.path '/' if isInPathList
      else $location.path '/login' unless isInPathList
]