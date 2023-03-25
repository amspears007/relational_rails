require 'rails_helper'

RSpec.describe "/sitcoms/:sitcom_id/characters", type: :feature do
  describe 'As a visitor when I visit the sitcom characters index page' do
    let!(:schitts_creek) {Sitcom.create!(name: "Schitt's Creek", streaming: true, number_of_seasons: 6, year_end: 2020)}
    let!(:arrested_development) {Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)}

    let!(:david_rose) {Character.create!(name: "David Rose", disposition: 'pretentious & phobic', has_job: true, number_of_children: 0, sitcom:schitts_creek)}
    let!(:moira_rose) {Character.create!(name: "Moira Rose", disposition: 'eccentric former soap opera star', has_job: false, number_of_children: 2,sitcom: schitts_creek)}
    let!(:stevie_budd) {Character.create!(name: "Stevie Budd", disposition: 'sardonic hotel clerk', has_job: true, number_of_children: 0,sitcom: schitts_creek)}
    let!(:lucille_bluth) {Character.create!(name: "Lucille Bluth", disposition: 'ruthless alcoholic', has_job: false, number_of_children: 4,sitcom: arrested_development)}
    let!(:george_michael) {Character.create!(name: "George Michael Bluth", disposition: 'shy & in love with cousin', has_job: true, number_of_children: 0, sitcom: arrested_development)}
    let!(:tobias) {Character.create!(name: "Tobias Funke", disposition: 'never-nude', has_job: false, number_of_children: 1, sitcom: arrested_development)}
    it 'I see each character name associated with that sitcom' do
      visit "/sitcoms/#{schitts_creek.id}/characters"
save_and_open_page

      expect(page).to have_content(david_rose.name)
      expect(page).to have_content(moira_rose.name)
      expect(page).to have_content(stevie_budd.name)
      expect(page).to_not have_content(george_michael.name)
    end

    it 'I see each character disposition associated with that sitcom' do
      visit "/sitcoms/#{schitts_creek.id}/characters"

      expect(page).to have_content(david_rose.disposition)
      expect(page).to have_content(moira_rose.disposition)
      expect(page).to have_content(stevie_budd.disposition)
      expect(page).to_not have_content(george_michael.disposition)
    end

    it 'I see how many children each character has' do
      visit "/sitcoms/#{schitts_creek.id}/characters"

      expect(page).to have_content(david_rose.number_of_children)
      expect(page).to have_content(moira_rose.number_of_children)
      expect(page).to have_content(stevie_budd.number_of_children)
      expect(page).to_not have_content(tobias.number_of_children)
    end
  end
end