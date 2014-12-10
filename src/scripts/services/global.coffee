angular.module 'juloloApp'

.service 'g', [
  'restUser'
  (
    restUser
  ) ->
    class User
      constructor: ->
        @profile = null
      setProfile: (profile) ->
        @profile = profile
      init: ->
        self = @

    @user = new User
    @inited = false
    @init = ->
      {
        user
      } = self = @
      Thenjs.parallel [
        (cont) ->
          user.init()
          .fin cont
      ]
      .then (cout, resultArr) ->
        self.inited = true
        cont null, true
      .fail (cont, error) ->
        console.error error
    @
]
