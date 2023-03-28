require 'spec_helper'

describe MusicAlbum do
  describe '#initialize' do
    it 'creates a new music album with a publish date and on_spotify attribute' do
      publish_date = '2023-03-12'
      on_spotify = true
      album = MusicAlbum.new(publish_date, on_spotify)
      expect(album.publish_date).to eq(publish_date)
      expect(album.on_spotify).to eq(on_spotify)
    end
  end

  describe '#can_be_archived?' do
    it 'returns true if super returns true and @on_spotify is true' do
      album = MusicAlbum.new('2023-03-12', true)
      expect(album.can_be_archived?).to be true
    end

    it 'returns false if super returns false and @on_spotify is true' do
      album = MusicAlbum.new('2023-03-12', true)
      expect(album.can_be_archived?).to be false
    end

    it 'returns false if @on_spotify is false' do
      album = MusicAlbum.new('2023-03-12', false)
      expect(album.can_be_archived?).to be false
    end
  end
end
