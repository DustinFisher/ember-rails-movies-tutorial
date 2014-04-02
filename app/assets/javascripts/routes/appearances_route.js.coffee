EmberApp.AppearancesRoute = Ember.Route.extend
  model: (params) ->
    console.log "Fetching movies"
    @modelFor('actor').get("appearances")
