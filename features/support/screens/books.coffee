class BooksScreen extends Screen
  anchor: -> $("navigationBar[name=Authors]")

  constructor: ->
    super 'books'

    extend @actions,
    'Scroll to "([^"]*)"$': (elementName) ->
      view.tableViews()[0].scrollToElementWithName(elementName)

    'Delete a row "([^"]*)"$': (rowName) ->
      target.pushTimeout(0.5)
      view.tableViews()[0].cells()[rowName].switches()[0].tap()
      view.tableViews()[0].cells()[rowName].buttons()[0].tap()
      target.popTimeout()
