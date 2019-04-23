require 'rails_helper'

RSpec.describe 'Movie', type: :feature do
  let!(:movie)  { create :movie, content: 'asd' }
  let!(:movie2) { create :movie }
  let!(:movie3) { create :movie }

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
      expect(page).to have_content('ads')
    end

    # it 'go to new page' do
    #   click_button '2'
    #   expect(page).not_to have_link('link text', href: '...')
    # ends
  end
end
