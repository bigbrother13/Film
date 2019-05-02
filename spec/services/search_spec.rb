require 'rails_helper'

RSpec.describe Search do
  let!(:movie)  { create :movie, content: 'voluptas voluptates', voice: true }
  let!(:movie2) { create :movie, content: 'aaaaa' }

  describe 'positive cases' do
    let(:params)  { { options: { content: 'voluptas voluptates', quality: true }, model_name: Movie } }

    it 'can search by content and quality' do
      search = Search.new(params)
      expect(search.perform).to include(movie)
      expect(search.perform).not_to include(movie2)
    end

    it 'can search by voiceover' do
      search = Search.new(options: { voice: '1' }, model_name: Movie)
      expect(search.perform).to include(movie)
      expect(search.perform).to_not include(movie2)
    end
  end

  describe 'negative cases' do
    let(:params) { { options: { content: 'ccc', quality: true }, model_name: Movie } }

    it 'can search by title and voice without result' do
      search = Search.new(params)
      expect(search.perform).to be_blank
    end
  end
end
