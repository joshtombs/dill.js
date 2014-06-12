module.exports = ->
  @Widgets = @Widgets || {}

  @Widgets.List = @Widget.List.extend
    root: "#first"
    childSelector: "li"

    toArray: ->
      @map (item) ->
        item.find().then (elm) -> elm.getText()

    filterBy: (string) ->
      @filter (item) ->
        item
          .find()
          .then (elm) -> elm.getText()
          .then (text) -> text.match(string) != null
