module.exports = ->
  @widgets = @Widgets || {}

  @Widgets.Myframe = @Widget.Iframe.extend
    frameText: -> @find('p').getText()
