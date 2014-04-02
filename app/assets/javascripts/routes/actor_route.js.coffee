# For more information see: http://emberjs.com/guides/routing/

EmberApp.ActorRoute = Ember.Route.extend
  model: (params) ->
    console.log "Retrieving actor with model_id=#{params.actor_id}"
    @get("store").find("actor", params.actor_id)

