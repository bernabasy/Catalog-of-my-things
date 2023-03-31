require_relative './spec_helper'

describe Genre do
  describe '#initialize' do
    it 'creates a new genre with a name' do
      name = 'Rumba'
      genre = Genre.new(name)
      expect(genre.name).to eq(name)
    end

    it 'generates a random ID between 1 and 1000' do
      name = 'Gospel'
      genre = Genre.new(name)
      expect(genre.instance_variable_get(:@id)).to be_between(1, 1000)
    end

    it 'initializes an empty array for items' do
      name = 'Gengeton'
      genre = Genre.new(name)
      expect(genre.items).to be_empty
    end
  end

  describe '#add_item' do
    it "adds the item to the genre's items array" do
      genre = Genre.new('Rumba')
      album = MusicAlbum.new('2022-01-01', true)
      genre.add_item(album)
      expect(genre.items).to include(album)
    end

    it "sets the item's genre to the genre object" do
      genre = Genre.new('Rumba')
      album = MusicAlbum.new('2022-01-01', true)
      genre.add_item(album)
      expect(album.genre).to eq(genre)
    end
  end
end