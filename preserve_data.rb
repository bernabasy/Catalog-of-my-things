require 'json'

def store_music_album
  music_album_store = @albums.map do |album|
    {
      publish_date: album.publish_date,
      on_spotify: album.on_spotify
    }
  end
  FileUtils.mkdir_p('data')
  File.new('data/music_albums.json', 'w') unless File.exist?('data/music_albums.json')
  File.write('data/music_albums.json', JSON.generate(music_album_store))
end

def load_music_album
  return unless File.exist?('data/music_albums.json')

  albums = JSON.parse(File.read('data/music_albums.json'))
  albums.each do |album|
    album = MusicAlbum.new(album['publish_date'], album['on_spotify'])
    @albums << album
  end
end

def store_genre
  genre_store = @genres.map do |genre|
    {
      name: genre.name
    }
  end
  FileUtils.mkdir_p('data')
  File.new('data/genres.json', 'w') unless File.exist?('data/genres.json')
  File.write('data/genres.json', JSON.generate(genre_store))
end

def load_genre
  return unless File.exist?('data/genres.json')

  genres = JSON.parse(File.read('data/genres.json'))
  genres.each do |genre|
    genre = Genre.new(genre['name'])
    @genres << genre
  end
end

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
