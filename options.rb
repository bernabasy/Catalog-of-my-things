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
    options_list = {
      1 => { text: 'List music albums', action: :list_music_albums },
      2 => { text: 'List genres', action: :list_genres },
      3 => { text: 'List books', action: :list_books },
      4 => { text: 'List labels', action: :list_labels },
      5 => { text: 'List all games', action: :list_all_games },
      6 => { text: 'List all authors', action: :list_all_authors },
      7 => { text: 'Add music album', action: :add_music_album },
      8 => { text: 'Add genre', action: :add_genre },
      9 => { text: 'Add book', action: :add_book },
      10 => { text: 'Add label', action: :add_label },
      11 => { text: 'Add game', action: :add_game },
      12 => { text: 'Add author', action: :add_author },
      13 => { text: 'Exit', action: :exit }
    }

    loop do
      puts 'Options:'
      options_list.each do |key, value|
        puts "#{key}. #{value[:text]}"
      end

      input = gets.chomp.to_i
      if options_list.key?(input)
        action = options_list[input][:action]
        return if action == :exit

        @app.send(action)
      else
        puts 'Please choose a number between 1 and 13'
      end
    end
  end
end
