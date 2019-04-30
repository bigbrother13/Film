require 'rails_helper'

RSpec.describe Search do
  let!(:movie)  { create :movie, content: 'voluptas voluptates', voice: true }
  let!(:movie2) { create :movie, content: 'aaaaa' }

  describe 'positive cases' do
    let(:params)  { { options: { content: 'voluptas voluptates', quality: true } } }

    it 'can search by content and quality' do
      search = Search.new(params)
      expect(search.perform).to include(movie)
      expect(search.perform).not_to include(movie2)
    end

    it 'can search by voiceover' do
      search = Search.new(options: { voice: '1' })
      expect(search.perform).to include(movie)
      expect(search.perform).to_not include(movie2)

      search = Search.new
      expect(search.perform.map(&:title)).to eq([movie, movie2].map(&:title))
    end
  end

  describe 'negative cases' do
    let(:params) { { options: { content: 'ccc', quality: true } } }

    it 'can search by title and voice without result' do
      search = Search.new(params)
      expect(search.perform).to be_blank
    end
  end
end
