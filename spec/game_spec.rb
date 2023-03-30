require_relative 'spec_helper'

# describe Game do
#   before :each do
#     @new_first_game = Game.new('23/02/2000', 'Y', '2022/02/22')
#     @new_second_game = Game.new('23/01/2010', 'Y', '2008/02/22')
#   end
#   describe '#can_be_archived' do
#     it 'returns the correct archived status' do
#       expect(@new_first_game.can_be_archived?).to be false
#       expect(@new_second_game.can_be_archived?).to be true
#     end
#   end
# end


describe Game do
  describe '#can_be_archived?' do
    context 'when last_played_at is greater than 2' do
      it 'returns true' do
        game = Game.new('2022-01-01', true, (Time.now - 3 * 24 * 60 * 60).to_s)
        expect(game.can_be_archived?).to be true
      end
    end
    context 'when last_played_at is less than or equal to 2' do
      it 'calls parent class can_be_archived? method' do
        item = double('item')
        allow(item).to receive(:can_be_archived?).and_return(false)
        game = Game.new('2022-01-01', true, (Time.now - 2 * 24 * 60 * 60).to_s)
        allow(game).to receive(:parent).and_return(item)

        expect(game.can_be_archived?).to be false
      end
    end
  end
end
