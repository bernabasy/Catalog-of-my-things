require_relative 'spec_helper'

describe Author do
  before :each do
    @new_author = Author.new('Steven', 'Grace')
  end
  describe 'The Author class' do
    it 'returns the correct first name' do
      expect(@new_author.first_name).to eql 'Steven'
    end
    it 'returns the correct last name' do
      expect(@new_author.last_name).to eql 'Grace'
    end
  end
end
