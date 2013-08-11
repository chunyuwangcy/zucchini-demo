class NewBookScreen extends Screen
  anchor: -> $("navigationBar[name=New Book]")

  constructor: ->
    super 'new-book'

    extend @elements,
    'Title' : -> view.tableViews()[0].cells()[0],
    'Author': -> view.tableViews()[0].cells()[1]
