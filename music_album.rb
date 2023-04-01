require_relative 'item'
require_relative 'genre'

class MusicAlbum < Item
  attr_accessor :publish_date, :on_spotify, :genre, :name

  def initialize(publish_date, on_spotify, name, genre)
    super()
    @publish_date = publish_date
    @on_spotify = on_spotify
    @name = name
    @genre = genre
  end

  def can_be_archived?
    super && @on_spotify ? true : false
  end
end
