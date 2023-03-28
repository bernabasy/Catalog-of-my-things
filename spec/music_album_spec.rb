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
end