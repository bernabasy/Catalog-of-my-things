require 'json'

def store_games
  game_store = @games.map do |game|
    {
      publish_date: game.publish_date,
      multiplayer: game.multiplayer,
      last_played_at: game.last_played_at.to_s
    }
  end

  FileUtils.mkdir_p('data')
  File.new('data/games.json', 'w') unless File.exist?('data/games.json')
  File.write('data/games.json', JSON.generate(game_store))
end

def load_games
  return unless File.exist?('data/games.json')

  games = JSON.parse(File.read('data/games.json'))

  games.each do |game|
    game = Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'])
    @games << game
  end
end
