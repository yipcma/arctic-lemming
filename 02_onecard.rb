require 'squib'

Squib::Deck.new cards: 1, layout: 'economy.yml' do
  background color: 'white'
  rect layout: 'cut'
  rect layout: 'safe'
  text str: 'Robot', layout: 'title'
  text str: 'Draw two cards', layout: 'description'
  save_png
end