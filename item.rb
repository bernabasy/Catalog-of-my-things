require 'date'

class Item
  attr_accessor :genre, :author, :label, :publish_date, :archived
  attr_reader :id

  def initialize()
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = false
    @label = label
  end

  def can_be_archived?
    date = Date._parse(@publish_date)
    publish_year = Date.today.year - date[:year]
    publish_year > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  def add_author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def add_label=(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def add_genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end
end
