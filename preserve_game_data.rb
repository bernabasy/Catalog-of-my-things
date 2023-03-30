require 'json'

def store_game
  game_store = @games.map do |game|
    {
      publish_date: game.publish_date,
      multiplayer: game.multiplayer,
      last_played_at: game.last_played_at
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

def store_author
  author_store = @authors.map do |author|
    {
      id: author.id,
      first_name: author.first_name,
      last_name: author.last_name
    }
  end
  FileUtils.mkdir_p('data')
  File.new('data/authors.json', 'w') unless File.exist?('data/authors.json')
  File.write('data/authors.json', JSON.generate(author_store))
end

def load_author
  return unless File.exist?('data/authors.json')

  authors = JSON.parse(File.read('data/authors.json'))
  authors.each do |author|
    author = Author.new(author['first_name'], author['last_name'])
    @authors << author
  end
end
