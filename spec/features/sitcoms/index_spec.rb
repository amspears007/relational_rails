require 'rails_helper'

RSpec.describe '/sitcoms (Sitcom Index Page)', type: :feature do
  #User Story 1
  describe 'as a visitor when I visit the sitcom index page' do
    let!(:schitts_creek) {Sitcom.create!(name: "Schitt's Creek", streaming: true, number_of_seasons: 6, year_end: 2020)}
    let!(:arrested_development) {Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)}
    let!(:modern_family) {Sitcom.create!(name: "Modern Family", streaming: true, number_of_seasons:11, year_end: 2020)}


    it 'I see the name of each sitcom' do
      visit '/sitcoms'
# save_and_open_page
      expect(page).to have_content(schitts_creek.name)
      expect(page).to have_content(arrested_development.name)
      expect(page).to have_content(modern_family.name)
    end

    it 'I see that records are ordered by most recently created first' do
      #User Story 6
      visit '/sitcoms'

      expect(schitts_creek.name).to appear_before(modern_family.name)
      expect(arrested_development.name).to appear_before(modern_family.name)
    end

  describe 'As a visitor I visit any page on the site' do
   #User story 9
    it 'I see a link at the top of the page that takes me to the Sitcoms Index' do
    visit '/sitcoms'
    #save_and_open_page
    click_link("List of all Sitcoms")

    expect(current_path).to eq('/sitcoms')
      end
    end
  end
end