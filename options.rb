require_relative './app'

class Options
  def initialize(app)
    @app = app
  end

  puts 'Welcome come to Catalog of my things'
  def options_list
    @lists = {
      1 => 'List all Albums',
      2 => 'List all Genres',
      3 => 'List all books',
      4 => 'List all Labels',
      5 => 'List all Games',
      6 => 'List all Authors',
      7 => 'Create an Album',
      8 => 'Create a Genre',
      9 => 'Create a Book',
      10 => 'Create a Label',
      11 => 'Create a Game',
      12 => 'Create an Author',
      13 => 'Exit'
    }

    @lists.each do |id, option|
      puts "#{id}: #{option}"
    end
    gets.chomp.to_i
  end

  def options
    loop do
      case options_list
      when 1
        @app.list_music_albums
      when 2
        @app.list_genres
      when 3
        @app.list_books
      when 4
        @app.list_labels
      when 5
        @app.list_all_games
      when 6
        @app.list_all_authors
      when 7
        @app.add_music_album
      when 8
        @app.add_genre
      when 9
        @app.add_book
      when 10
        @app.add_label
      when 11
        @app.add_game
      when 12
        @app.add_author
      when 13
        puts 'Thank you for using this app'
        return
      else
        puts 'Please choose a number between 1 and 13'
      end
    end
  end
end
