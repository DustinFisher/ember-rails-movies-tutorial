EmberApp.MovieController = Ember.ObjectController.extend
  isEditing: false

  editName: (->
    @get("name")
  ).property("model.name")

  editYear: (->
    @get("year")
  ).property("model.year")

  editDescription: (->
    @get("description")
  ).property("model.description")

  actions:
    edit: ->
      @set('isEditing', true)

    save: ->
      @set('isEditing', false)
      @set('name', @get("editName"))
      @set('year', @get("editYear"))
      @set('description', @get("editDescription"))
      @get('model').save()

    cancel: ->
      @set('isEditing', false)
      @set('editName', @get("name"))
      @set('editYear', @get("year"))
      @set('editDescription', @get("description"))

