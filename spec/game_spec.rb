require_relative 'spec_helper'

describe Game do
  context '#can_be_archived when called' do
    it 'should return false if last played date is within 2 years and published more than 10 years ago' do
      game = Game.new('2010-03-10', 'yes', '2022-03-21')
      result = game.can_be_archived?

      expect(result).to eq(false)
    end

    it 'should return true if last played date is more than 2 years and published more than 10 years ago' do
      game = Game.new('2005-01-15', 'yes', '2019-01-01')
      result = game.can_be_archived?

      expect(result).to eq(true)
    end
  end
end
