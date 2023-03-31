# require 'json'

# def store_music_album
#   music_album_store = @albums.map do |album|
#     {
#       publish_date: album.publish_date,
#       on_spotify: album.on_spotify
#     }
#   end
#   Dir.mkdir('data') unless File.directory?('data')
#   File.new('data/music_albums.json', 'w') unless File.exist?('data/music_albums.json')
#   File.write('data/music_albums.json', JSON.generate(music_album_store))
# end

# def load_music_album
#   return unless File.exist?('data/music_albums.json')

#   albums = JSON.parse(File.read('data/music_albums.json'))
#   albums.each do |album|
#     album = MusicAlbum.new(album['publish_date'], album['on_spotify'])
#     @albums << album
#   end
# end

# def store_genre
#   genre_store = @genres.map do |genre|
#     {
#       name: genre.name
#     }
#   end
#   Dir.mkdir('data') unless File.directory?('data')
#   File.new('data/genres.json', 'w') unless File.exist?('data/genres.json')
#   File.write('data/genres.json', JSON.generate(genre_store))
# end

# def load_genre
#   return unless File.exist?('data/genres.json')

#   genres = JSON.parse(File.read('data/genres.json'))
#   genres.each do |genre|
#     genre = Genre.new(genre['name'])
#     @genres << genre
#   end
# end

# def store_game
#   game_store = @games.map do |game|
#     {
#       publish_date: game.publish_date,
#       multiplayer: game.multiplayer,
#       last_played_at: game.last_played_at
#     }
#   end
#   Dir.mkdir('data') unless File.directory?('data')
#   File.new('data/games.json', 'w') unless File.exist?('data/games.json')
#   File.write('data/games.json', JSON.generate(game_store))
# end

# def load_games
#   return unless File.exist?('data/games.json')

#   games = JSON.parse(File.read('data/games.json'))
#   games.each do |game|
#     game = Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'])
#     @games << game
#   end
# end

# def store_author
#   author_store = @authors.map do |author|
#     {
#       id: author.id,
#       first_name: author.first_name,
#       last_name: author.last_name
#     }
#   end
#   Dir.mkdir('data') unless File.directory?('data')
#   File.new('data/authors.json', 'w') unless File.exist?('data/authors.json')
#   File.write('data/authors.json', JSON.generate(author_store))
# end

# def load_author
#   return unless File.exist?('data/authors.json')

#   authors = JSON.parse(File.read('data/authors.json'))
#   authors.each do |author|
#     author = Author.new(author['first_name'], author['last_name'])
#     @authors << author
#   end
# end

# def store_books
#   book_store = @books.map do |book|
#     {
#       name: book.name,
#       publisher: book.publisher,
#       cover_state: book.cover_state,
#       publish_date: book.publish_date
#     }
#   end
#   Dir.mkdir('data') unless File.directory?('data')
#   File.new('data/books.json', 'w') unless File.exist?('data/books.json')
#   File.write('data/books.json', JSON.generate(book_store))
# end

# def list_booka
#   return unless File.exist?('data/books.json')

#   books = JSON.parse(File.read('data/books.json'))

#   books.each do |book|
#     book = Book.new(book['name'], book['publisher'], book['cover_state'], book['publish_date'])
#     @books << book
#   end
# end

# def store_labels
#   store_label = @labels.map do |label|
#     {
#       title: label.title,
#       color: label.color
#     }
#   end
#   Dir.mkdir('data') unless File.directory?('data')
#   File.new('data/music_albums.json', 'w') unless File.exist?('data/music_albums.json')
#   File.write('data/labels.json', JSON.generate(store_label))
# end

# def feach_labels
#   return unless File.exist?('data/labels.json')

#   labels = JSON.parse(File.read('data/labels.json'))

#   labels.each do |label|
#     label = Label.new(label['title'], label['color'])
#     @labels << label
#   end
# end
require 'json'

def store_music_album
  music_album_store = @albums.map do |album|
    {
      publish_date: album.publish_date,
      on_spotify: album.on_spotify
    }
  end
  Dir.mkdir('data') unless File.directory?('data')
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
  Dir.mkdir('data') unless File.directory?('data')
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
  Dir.mkdir('data') unless File.directory?('data')
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
  Dir.mkdir('data') unless File.directory?('data')
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

def store_books
  book_store = @books.map do |book|
    {
      name: book.name,
      publisher: book.publisher,
      cover_state: book.cover_state,
      publish_date: book.publish_date,
      #code added
      author_first_name: book.author.first_name,
      author_last_name: book.author.last_name
      #
    }
  end
  Dir.mkdir('data') unless File.directory?('data')
  File.new('data/books.json', 'w') unless File.exist?('data/books.json')
  File.write('data/books.json', JSON.generate(book_store))
end

def list_booka
  return unless File.exist?('data/books.json')

  books = JSON.parse(File.read('data/books.json'))

  books.each do |book|
    # update
    new_book = Book.new(book['name'], book['publisher'], book['cover_state'], book['publish_date'])
    # code added and updated
    author = Author.new(book["author_first_name"], book["author_last_name"])
    new_book.add_author(author)
    #
    @books << new_book
  end
end

def store_labels
  store_label = @labels.map do |label|
    {
      title: label.title,
      color: label.color
    }
  end
  Dir.mkdir('data') unless File.directory?('data')
  File.new('data/music_albums.json', 'w') unless File.exist?('data/music_albums.json')
  File.write('data/labels.json', JSON.generate(store_label))
end

def feach_labels
  return unless File.exist?('data/labels.json')

  labels = JSON.parse(File.read('data/labels.json'))

  labels.each do |label|
    label = Label.new(label['title'], label['color'])
    @labels << label
  end
end
