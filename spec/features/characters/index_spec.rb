require 'rails_helper'

RSpec.describe '/characters(Character Index Page)', type: :feature do
  #User Story 3
  describe 'as a visitor when I visit the character index page' do
    let!(:schitts_creek) {Sitcom.create!(name: "Schitt's Creek", streaming: true, number_of_seasons: 6, year_end: 2020)}
    let!(:arrested_development) {Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)}

    let!(:david_rose) {Character.create!(name: "David Rose", disposition: 'pretentious', has_job: true, number_of_children: 0, sitcom:schitts_creek)}
    let!(:moira_rose) {Character.create!(name: "Moira Rose", disposition: 'eccentric', has_job: false, number_of_children: 2,sitcom: schitts_creek)}
    let!(:stevie_budd) {Character.create!(name: "Stevie Budd", disposition: 'sardonic', has_job: true, number_of_children: 0,sitcom: schitts_creek)}
    let!(:michael_bluth) {Character.create!(name: "Michael Bluth", disposition: 'straight_man', has_job: true, number_of_children: 1, sitcom: arrested_development)}
    let!(:lucille_bluth) {Character.create!(name: "Lucille Bluth", disposition: 'ruthless', has_job: false, number_of_children: 4,sitcom: arrested_development)}

    it 'I see the attributes of each character' do
      visit '/characters'
      save_and_open_page

      expect(page).to have_content(david_rose.name)
      expect(page).to have_content(david_rose.disposition)
      expect(page).to have_content(david_rose.has_job)
      expect(page).to have_content(david_rose.number_of_children)

      expect(page).to have_content(moira_rose.number_of_children)
      expect(page).to have_content(stevie_budd.disposition)


      expect(page).to have_content(lucille_bluth.name)
      expect(page).to have_content(lucille_bluth.disposition)
      expect(page).to have_content(lucille_bluth.has_job)
      expect(page).to have_content(lucille_bluth.number_of_children)    

      expect(page).to have_content(michael_bluth.number_of_children)
    end
  end
end