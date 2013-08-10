class BookTitleScreen extends Screen
  anchor: -> $("navigationBar[name=Book Title]")

  constructor: ->
    super 'book-title'

    extend @elements,
    'Title': -> $("textfield").first()