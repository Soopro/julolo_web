angular.module 'juloloApp'
.service 'Auth', [
  '$cookieStore'
  '$location'
  (
    $cookieStore, $location
  ) ->
    @isLogged = ->
      !!$cookieStore.get('auth')

    @token = ->
      $cookieStore.get 'auth'

    @login = (token) ->
      $cookieStore.put 'auth', token
      $location.path '/'
      return

    @logout = ->
      @cookieStore.remove 'auth'
      @location.path '/login'
      return

    return
]