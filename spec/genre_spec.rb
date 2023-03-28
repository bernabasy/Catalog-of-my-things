require 'spec_helper'

describe Genre do
  describe '#initialize' do
    it 'creates a new genre with a name' do
      name = 'Rumba'
      genre = Genre.new(name)
      expect(genre.name).to eq(name)
    end
  end
end