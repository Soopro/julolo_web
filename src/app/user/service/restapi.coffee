angular.module 'juloloApp'

.factory 'restUserDef', [
  'Restangular'
  'Config'
  (
    Restangular
    Config
  ) ->
    Restangular.withConfig (RestangularConfigurer) ->
      RestangularConfigurer.setBaseUrl "#{Config.SooproURL}/user"
]

.factory 'restUser', [
  'restUserDef'
  (
    restUserDef
  ) ->
    register: (data) ->
      register = restUserDef.all 'register'

      Thenjs (cout) ->
        register.post data
        .then null, callback
        , (res) ->
          cont res

    login: (login_data) ->
      login = restUserDef.all 'login'

      param = login_data

      Thenjs (cont) ->
        login.post param
        .then (callback) ->
          cont null, callback
        , (res) ->
          cont res

    logout: ->
      logout = restUserDef.all 'logout'

      Thenjs (cont) ->
        logout.post()
        .then (callback) ->
          cont null, callback
        , (res) ->
          cont res

]