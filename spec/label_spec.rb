require_relative './spec_helper'

RSpec.describe Label do
  let(:label) { Label.new('Groceries', 'green') }

  describe '#initialize' do
    it 'creates a new Label object' do
      expect(label).to be_an_instance_of(Label)
    end

    it 'sets title and color attributes' do
      expect(label.title).to eq('Groceries')
      expect(label.color).to eq('green')
    end

    it 'generates a random id between 1 and 1000' do
      expect(label.id).to be_between(1, 1000).inclusive
    end

    it 'initializes an empty array of items' do
      expect(label.instance_variable_get(:@items)).to be_empty
    end
  end
end
