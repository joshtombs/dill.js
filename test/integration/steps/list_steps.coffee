module.exports = ->
  @Given /^I should see "([^"]*)" items in a list$/, (count) ->
    new @Widgets.List().items()
    .should.eventually.have.length(count)

  @Given /^I should see "([^"]*)" in position "([^"]*)" of the list$/, (content, position) ->
    new @Widgets.List().at(+position-1)
    .then (item) -> item.find()
    .then (elm) -> elm.getText()
    .should.eventually.equal(content)

  @Given /^I should see html "([^"]*)" in position "([^"]*)" of the list$/, (content, position) ->
    new @Widgets.List().at(+position-1)
    .then (item) -> item.getHtml()
    .should.eventually.equal(content)

  @When /^I filter by "([^"]*)" I should see "([^"]*)" element$/, (string, count) ->
    new @Widgets.List().filterBy(string)
    .should.eventually.have.length(count)

  @Then /^I should see the following list:$/, (table) ->
    new @Widgets.List().toArray()
    .should.eventually.eql(_.flatten(table.raw()))

  @Then /^I should see stuff$/, (table) ->
    new @Widgets.List().toHtml()

  @Given /^I am only searching for items with a link I should only see "([^"]*)" items in the list$/, (count) ->
    new @Widgets.List({root: '#second', customSelector: 'a' }).items()
    .should.eventually.have.length(count)
