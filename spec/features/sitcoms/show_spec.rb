require 'rails_helper'

RSpec.describe 'the sitcoms show page' do
  #User Story 2
  describe 'As a visitor when I visit the sitcom show page' do
    let!(:schitts_creek) {Sitcom.create!(name: "Schitt's Creek", streaming: true, number_of_seasons: 6, year_end: 2020)}
    let!(:arrested_development) {Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)}

    it 'I see the sitcom with that id and its attributes' do
      visit "/sitcoms/#{schitts_creek.id}"
      save_and_open_page

      expect(page).to have_content(schitts_creek.name)
      expect(page).to have_content(schitts_creek.streaming)
      expect(page).to have_content(schitts_creek.number_of_seasons)
      expect(page).to have_content(schitts_creek.year_end)

      expect(page).to_not have_content(arrested_development.name)
    end

    it 'I see a count of the number of characters associated with this sitcom' do
      visit "/sitcoms/#{schitts_creek.id}"

      
      expect(page.to have_content(schitts_creek.char_count))
      expect(schitts_creek.char_count).to eq(3)
    end
  end
end