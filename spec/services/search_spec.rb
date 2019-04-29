require 'rails_helper'

RSpec.describe Search do
  let!(:movie)  { create :movie, content: 'voluptas voluptates', quality: true }
  let!(:movie2) { create :movie, content: 'aaaaa', quality: true }


  describe 'positive cases' do
    let(:params)  { { content: 'voluptas voluptates', quality: true } }

    it 'can search by content and quality' do
      search = Search.new(params)
      expect(search.perform).to include(movie)
      expect(search.perform).not_to include(movie2)
    end
  end

  describe 'negative cases' do
    it 'can search by title and voice without result' do
    end
  end
end
