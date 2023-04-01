require_relative './spec_helper'

describe MusicAlbum do
  describe '#initialize' do
    it 'creates a new music album with a publish date, on_spotify attribute, name, and genre' do
      publish_date = '2023-03-12'
      on_spotify = true
      name = 'Thriller'
      genre = Genre.new('Pop')
      album = MusicAlbum.new(publish_date, on_spotify, name, genre)
      expect(album.publish_date).to eq(publish_date)
      expect(album.on_spotify).to eq(on_spotify)
      expect(album.name).to eq(name)
      expect(album.genre).to eq(genre)
    end
  end

  describe '#can_be_archived?' do
    it 'returns false if super returns false and @on_spotify is true' do
      album = MusicAlbum.new('2010-03-12', false, 'Thriller', Genre.new('Pop'))
      expect(album.can_be_archived?).to be false
    end
    it 'returns false if @on_spotify is false' do
      album = MusicAlbum.new('2010-03-12', false, 'Thriller', Genre.new('Pop'))
      expect(album.can_be_archived?).to be false
    end

    it 'returns true if super returns true and @on_spotify is true' do
      album = MusicAlbum.new('2000-03-12', true, 'Thriller', Genre.new('Pop'))
      expect(album.can_be_archived?).to be true
    end
  end
end
