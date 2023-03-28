require_relative './spec_helper'

RSpec.describe Book do
    let(:book) { Book.new('Title', 'Publisher', 'Good', '2010-03-28') }
  
    describe '#can_be_archived?' do
      context 'when the publish date is more than 10 years ago' do
        it 'returns true' do
          allow(book).to receive(:bad_cover?).and_return(false)
          expect(book.can_be_archived?).to eq(true)
        end
      end
  
      context 'when the cover state is bad' do
        it 'returns true' do
          allow(book).to receive(:publish_date).and_return(Date.today.to_s) # assumes today's date is 2023-03-28
          allow(book).to receive(:bad_cover?).and_return(true)
          expect(book.can_be_archived?).to eq(true)
        end
      end
  
      context 'when neither of the above is true' do
        let(:book) { Book.new('Title', 'Publisher', 'Good', '2022-03-28') }
                it 'returns false' do
                  allow(book).to receive(:publish_date).and_return('2022-03-28')
                  allow(book).to receive(:bad_cover?).and_return(false)
                  expect(book.can_be_archived?).to eq(false)
                end
              end
    end
  
  end

  