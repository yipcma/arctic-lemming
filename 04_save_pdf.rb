require 'squib'
require 'game_icons'

data = Squib.csv file: 'data.csv'
layouts = ['economy.yml', 'cards.yml']
Squib::Deck.new cards: data['name'].size, layout: layouts do
  background color: 'white'
  rect layout: 'cut'
  rect layout: 'safe'
  text str: data['name'], layout: 'title'
  text str: data['power'], layout: 'description'
  text str: Time.now, layout: 'credits'
  svg layout: data['faction']
  svg file: data['illustration'].map {|t| GameIcons.get(t).file}, layout: 'illustration'
  save_sheet prefix: 'part2_', columns: 4
  save_pdf trim: 37.5 # 1/8-inch trim (300ppi/8) on 8.5x11 landscape
end
