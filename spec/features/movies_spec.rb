require 'rails_helper'

RSpec.describe 'Movie', type: :feature do
  let!(:author) { create :user }
  let!(:movie)  { create :movie, user: author }
  let!(:movie2) { create :movie, user: author }
  let!(:movie3) { create :movie }

  describe 'visitor' do
    before do
      visit root_path
    end

    it 'can see the Movies table' do
      expect(page).to have_content('Movies')
    end
  end
end
