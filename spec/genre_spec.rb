require 'spec_helper'

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
  end
end
