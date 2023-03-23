require 'rails_helper'

RSpec.describe '/characters(Character Index Page)', type: :feature do
  #User Story 3
  describe 'as a visitor when I visit the character index page' do
    let!(:david_rose) {Character.create!(name: "David Rose", streaming: true, number_of_seasons: 6, year_end: 2020)}

    it 'I see the attributes of each character' do

      visit '/characters'

      expect(page).to have_content(schitts_creek.name)
      expect(page).to have_content(schitts_creek.streaming)
      expect(page).to have_content(schitts_creek.number_of_seasons)
      expect(page).to have_content(schitts_creek.year_end)

      expect(page).to have_content(schitts_creek.name)
      expect(page).to have_content(schitts_creek.streaming)
      expect(page).to have_content(schitts_creek.number_of_seasons)
      expect(page).to have_content(schitts_creek.year_end)    
    end
  end
end