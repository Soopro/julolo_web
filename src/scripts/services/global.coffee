angular.module 'juloloApp'

.service 'g', [
  '$location'
  (
    $location
  ) ->
  class User
    constructor: ->
      @profile = null
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
