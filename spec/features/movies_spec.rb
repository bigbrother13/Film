require 'rails_helper'

RSpec.describe 'Movie', type: :feature do
  let!(:movie)  { create :movie}
  let!(:movie2) { create :movie, content: 'asd' }

  describe 'visitor' do
    before do
      visit root_path
    end

    it 'can see the Movies table' do
      expect(page).to have_content('Movies')
    end

    it 'can use filtr for search' do
      fill_in 'Title', with: movie.title
      click_button 'Search'
      expect(page).to have_content(movie.title)
    end

    it 'can use filtr for search' do
      fill_in 'Content', with: movie.content
      click_button 'Search'
      expect(page).to have_content(movie.content)
    end

    it 'can use filtr for search' do
      page.check('search_quality') 
      click_button 'Search'
      expect(page).to have_content(movie.quality)
    end

    it 'can use filtr for search' do
      page.check('search_voice') 
      click_button 'Search'
      expect(page).to have_content(movie.voice)
    end
  end
end
