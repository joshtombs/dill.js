module.exports = ->
  @When /^I switch to the iframe "([^"]*)"$/, (iframe) ->
    new @Widgets.Myframe({
      root: iframe
    }).focus()

  @Then /^I should see the content "([^"]*)"$/, (content) ->
    new @Widget({
      root: 'p'
    })
    .read()
    .should.eventually.eql(content)

  @When /^I switch back to the page content$/, ->
    new @Widgets.Myframe({
      root: 'iframe'
    }).unfocus()

