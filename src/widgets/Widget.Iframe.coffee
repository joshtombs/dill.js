class @Widget.Iframe extends @Widget
  root: 'iframe'

  focus: ->
    @driver.switchTo().frame(@find())

  unfocus: ->
    @driver.switchTo().defaultContent()
