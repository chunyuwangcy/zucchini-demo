class AuthorScreen extends Screen
  anchor: -> $("navigationBar[name=Author]")

  constructor: ->
    super 'author'

    extend @elements,
    'Author': -> $("textfield").first()