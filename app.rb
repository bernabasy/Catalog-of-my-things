require_relative './book'
require_relative './label'
require_relative './author'
require_relative './preserve_data'

class App
  attr_accessor :books, :labels

  def initialize
    @books = []
    @labels = []
    feach_labels
    list_booka
  end

  def list_books
    if @books.empty?
      puts 'books not found'
    else
      @books.each do |book|
        print "name: #{book.name}, publisher: #{book.publisher}, "
        puts "cover_State: #{book.cover_state}, pulish_date: #{book.publish_date}"
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

  def add_book
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
end
