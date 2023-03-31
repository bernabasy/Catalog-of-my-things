# require_relative './book'
# require_relative './label'
# require_relative './author'
# require_relative './preserve_data'
# require_relative './music_album'
# require_relative './genre'
# require_relative './game'

# class App
#   attr_reader :albums, :genres, :books, :labels, :games, :authors

#   def initialize
#     @albums = []
#     @genres = []
#     @books = []
#     @labels = []
#     @games = []
#     @authors = []

#     feach_labels
#     list_booka
#     load_music_album
#     load_genre
#     load_games
#     load_author
#   end

#   def list_music_albums
#     if @albums.empty?
#       puts 'No music albums'
#     else
#       @albums.each do |album|
#         puts "Publish Date: #{album.publish_date}, On Spotify: #{album.on_spotify}"
#       end
#     end
#   end

#   def list_labels
#     if @labels.empty?
#       puts 'labels not found'
#     else
#       @labels.each do |label|
#         puts "title: #{label.title}, color: #{label.color}"
#       end
#     end
#   end

#   def list_genres
#     if @genres.empty?
#       puts 'No genres present'
#     else
#       @genres.each do |genre|
#         puts "Genre Name: #{genre.name}"
#       end
#     end
#   end

#   def list_books
#     if @books.empty?
#       puts 'books not found'
#     else
#       @books.each do |book|
#         print "name: #{book.name}, publisher: #{book.publisher}, "
#         puts "cover_State: #{book.cover_state}, pulish_date: #{book.publish_date}"
#       end
#     end
#   end

#   def add_book
#     puts 'please enter book name'
#     name = gets.chomp
#     puts 'please enter publisher name'
#     publisher = gets.chomp
#     puts 'please enter cover_State as: good or bad'
#     cover_state = gets.chomp

#     if cover_state != 'good' && cover_state != 'bad'
#       puts 'cover_State must be good or bad'
#       return
#     end

#     puts 'please enter pulish_date'
#     publish_date = gets.chomp

#     one_book = Book.new(name, publisher, cover_state, publish_date)
#     @books.push(one_book)
#     puts 'book created successfully'
#     store_books
#   end

#   def add_label
#     puts 'please enter a title'
#     title = gets.chomp
#     puts 'please enter the color'
#     color = gets.chomp

#     create_label = Label.new(title, color)
#     @labels.push(create_label)
#     puts 'label created successfully'
#     store_labels
#   end

#   def fetch_album_details
#     print 'Publish Date: '
#     date = gets.chomp
#     print 'Is it on Spotify? (true/false): '
#     spotify_value = gets.chomp
#     case spotify_value
#     when 'true'
#       on_spotify = true
#     when 'false'
#       on_spotify = false
#     else
#       puts "Invalid value detected: #{spotify_value}"
#       exit
#     end
#     { date: date, on_spotify: on_spotify }
#   end

#   def add_music_album
#     album_details = fetch_album_details
#     each_album = MusicAlbum.new(album_details[:date], album_details[:on_spotify])
#     @albums << each_album
#     puts 'Album successfully added'
#     store_music_album
#   end

#   def fetch_genre_details
#     print 'Name: '
#     name = gets.chomp
#     { name: name }
#   end

#   def add_genre
#     genre_details = fetch_genre_details
#     each_genre = Genre.new(genre_details[:name])
#     @genres << each_genre
#     puts 'Genre successfully added'
#     store_genre
#   end

#   def list_all_authors
#     if @authors.empty?
#       puts 'No authors yet'
#     else
#       @authors.each do |author|
#         puts "Author Name: #{author.first_name} #{author.last_name}"
#       end
#     end
#   end

#   def add_author
#     puts 'Author First Name: '
#     f_name = gets.chomp
#     puts 'Author Last Name: '
#     l_name = gets.chomp
#     new_author = Author.new(f_name, l_name)
#     @authors << new_author
#     puts 'Author added successfully'
#     store_author
#   end

#   def add_game
#     puts 'Publish Date: '
#     pub_date = gets.chomp
#     puts 'Multiplayer? (Y/N): '
#     multiplayer = gets.chomp
#     if %w[Y y].include?(multiplayer)
#       is_multiplayer = true
#     elsif %w[N n].include?(multiplayer)
#       is_multiplayer = false
#     else
#       puts "Invalid value detected: #{mutliplayer}"
#       return
#     end
#     puts 'Date last played: '
#     last_played = gets.chomp
#     new_game = Game.new(pub_date, is_multiplayer, last_played)
#     @games << new_game
#     puts 'Game added successfully'
#     store_game
#   end

#   def list_all_games
#     if @games.empty?
#       puts 'No games yet'
#     else
#       @games.each do |game|
#         puts "Publish Date: #{game.publish_date}, Multiplayer: #{game.multiplayer}, Last Played: #{game.last_played_at}"
#       end
#     end
#   end
# end
require_relative './book'
require_relative './label'
require_relative './author'
require_relative './preserve_data'
require_relative './music_album'
require_relative './genre'
require_relative './game'

class App
  attr_reader :albums, :genres, :books, :labels, :games, :authors

  def initialize
    @albums = []
    @genres = []
    @books = []
    @labels = []
    @games = []
    @authors = []

    feach_labels
    list_booka
    load_music_album
    load_genre
    load_games
    load_author
  end

  def list_music_albums
    if @albums.empty?
      puts 'No music albums'
    else
      @albums.each do |album|
        puts "Publish Date: #{album.publish_date}, On Spotify: #{album.on_spotify}"
      end
    end
  end

  def list_labels
    if @labels.empty?
      puts 'labels not found'
    else
      @labels.each do |label|
        puts "title: #{label.title}, color: #{label.color}"
      end
    end
  end

  def list_genres
    if @genres.empty?
      puts 'No genres present'
    else
      @genres.each do |genre|
        puts "Genre Name: #{genre.name}"
      end
    end
  end

  def list_books
    if @books.empty?
      puts 'books not found'
    else
      @books.each do |book|
        print "name: #{book.name}, publisher: #{book.publisher}, "
        puts "cover_State: #{book.cover_state}, pulish_date: #{book.publish_date}"
        #code added
        puts "[author:#{book.author.first_name} #{book.author.last_name}]"
        #
      end
    end
  end

  def add_book
    # code added
    puts "Please enter book author information"
    author = add_author
    #

    puts 'please enter book name'
    name = gets.chomp
    puts 'please enter publisher name'
    publisher = gets.chomp
    puts 'please enter cover_State as: good or bad'
    cover_state = gets.chomp

    if cover_state != 'good' && cover_state != 'bad'
      puts 'cover_State must be good or bad'
      return
    end

    puts 'please enter pulish_date'
    publish_date = gets.chomp

    one_book = Book.new(name, publisher, cover_state, publish_date)
    # code added
    one_book.add_author(author)
    #
    @books.push(one_book)
    puts 'book created successfully'
    store_books
  end

  def add_label
    puts 'please enter a title'
    title = gets.chomp
    puts 'please enter the color'
    color = gets.chomp

    create_label = Label.new(title, color)
    @labels.push(create_label)
    puts 'label created successfully'
    store_labels
  end

  def fetch_album_details
    print 'Publish Date: '
    date = gets.chomp
    print 'Is it on Spotify? (true/false): '
    spotify_value = gets.chomp
    case spotify_value
    when 'true'
      on_spotify = true
    when 'false'
      on_spotify = false
    else
      puts "Invalid value detected: #{spotify_value}"
      exit
    end
    { date: date, on_spotify: on_spotify }
  end

  def add_music_album
    album_details = fetch_album_details
    each_album = MusicAlbum.new(album_details[:date], album_details[:on_spotify])
    @albums << each_album
    puts 'Album successfully added'
    store_music_album
  end

  def fetch_genre_details
    print 'Name: '
    name = gets.chomp
    { name: name }
  end

  def add_genre
    genre_details = fetch_genre_details
    each_genre = Genre.new(genre_details[:name])
    @genres << each_genre
    puts 'Genre successfully added'
    store_genre
  end

  def list_all_authors
    if @authors.empty?
      puts 'No authors yet'
    else
      @authors.each do |author|
        puts "Author Name: #{author.first_name} #{author.last_name}"
      end
    end
  end

  def add_author
    puts 'Author First Name: '
    f_name = gets.chomp
    puts 'Author Last Name: '
    l_name = gets.chomp
    new_author = Author.new(f_name, l_name)
    @authors << new_author
    puts 'Author added successfully'
    store_author
    # code added
    return new_author
  end

  def add_game
    puts 'Publish Date: '
    pub_date = gets.chomp
    puts 'Multiplayer? (Y/N): '
    multiplayer = gets.chomp
    if %w[Y y].include?(multiplayer)
      is_multiplayer = true
    elsif %w[N n].include?(multiplayer)
      is_multiplayer = false
    else
      puts "Invalid value detected: #{mutliplayer}"
      return
    end
    puts 'Date last played: '
    last_played = gets.chomp
    new_game = Game.new(pub_date, is_multiplayer, last_played)
    @games << new_game
    puts 'Game added successfully'
    store_game
  end

  def list_all_games
    if @games.empty?
      puts 'No games yet'
    else
      @games.each do |game|
        puts "Publish Date: #{game.publish_date}, Multiplayer: #{game.multiplayer}, Last Played: #{game.last_played_at}"
      end
    end
  end
end
