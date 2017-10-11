require 'squib'

Squib::Deck.new cards: 1 do
  background color: 'pink'
  rect
  text str: 'Draw two cards.'
  save_png prefix:'01_hello_rb', dir: '_output'
end