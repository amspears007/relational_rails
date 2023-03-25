require 'rails_helper'

RSpec.describe '/sitcoms (Sitcom Index Page)', type: :feature do
  #User Story 1
  describe 'as a visitor when I visit the sitcom index page' do
    let!(:schitts_creek) {Sitcom.create!(name: "Schitt's Creek", streaming: true, number_of_seasons: 6, year_end: 2020)}
    let!(:arrested_development) {Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)}

    it 'I see the name of each sitcom' do
      visit '/sitcoms'
save_and_open_page
      expect(page).to have_content(schitts_creek.name)
      expect(page).to have_content(arrested_development.name)
    end
  end
end