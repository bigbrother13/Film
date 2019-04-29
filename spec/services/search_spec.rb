require 'rails_helper'

RSpec.describe Search do
  let!(:movie)  { create :movie }
  let!(:movie2) { create :movie }
  let(:params)  { { title: 'as', content: 'voluptas voluptates', quality: true, voice: true } }

  it 'can search by title' do
    search = Search.new(params)
    expect(search.perform).to eq(title: 'as', content: 'voluptas voluptates ', quality: true, voice: true)
  end
end
