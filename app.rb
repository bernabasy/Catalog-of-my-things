require_relative './music_album'
require_relative './genre'
require_relative './preserve_data'

class App
  attr_reader :albums, :genres

  def initialize
    @albums = []
    @genres = []
  
    load_music_album
    load_genre
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

  def list_genres
    if @genres.empty?
      puts 'No genres present'
    else
      @genres.each do |genre|
        puts "ID: #{genre.id}, Genre Name: #{genre.name}"
      end
    end
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
end

app = App.new
app.list_genres