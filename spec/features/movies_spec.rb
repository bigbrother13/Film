require 'rails_helper'

RSpec.describe 'Movie', type: :feature do
  let!(:movie) { create :movie}
  let!(:movie)  { create :movie, content: 'asd' }
  let!(:search) { create :search, movie: movie }

  describe 'visitor' do
    before do
      visit root_path
    end

    it 'can see the Movies table' do
      expect(page).to have_content('Movies')
    end

    it 'can search by content' do
      fill_in name="term", with: 'asd'
      click_button 'Search'
      expect(page).to have_content('asd')
    end

    it 'can use filtr for search' do
      fill_in keywords, with: 'iure quia'
      fill_in content, with: ' ea eos dolor aliquam'
      fill_in category, with: 'adventure'
      fill_in age, with: '2010'
      fill_in quality, with: '1920'
      fill_in voice, with: 'ru  '
      click_button 'Search'
      expect(page).to have_content('Search Result')
    end
  end
end
