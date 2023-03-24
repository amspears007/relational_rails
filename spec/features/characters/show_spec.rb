require  'rails_helper'

RSpec.describe 'characters show page' do
  #User Story 4
  describe 'As a visitor when I visit the character show page' do
    let!(:david_rose) {Character.create!(name: "David Rose", disposition: 'pretentious', has_job: true, number_of_children: 0, sitcom:schitts_creek)}
    let!(:moira_rose) {Character.create!(name: "Moira Rose", disposition: 'eccentric', has_job: false, number_of_children: 2,sitcom: schitts_creek)}
    let!(:stevie_budd) {Character.create!(name: "Stevie Budd", disposition: 'sardonic', has_job: true, number_of_children: 0,sitcom: schitts_creek)}
    let!(:lucille_bluth) {Character.create!(name: "Lucille Bluth", disposition: 'ruthless alcoholic', has_job: false, number_of_children: 4,sitcom: arrested_development)}
    let!(:george_michael) {Character.create!(name: "George Michael Bluth", disposition: 'shy', has_job: true, number_of_children: 0, sitcom: arrested_development)}
    let!(:tobias) {Character.create!(name: "Tobias Funke", disposition: 'never-nude', has_job: true, number_of_children: 1, sitcom: arrested_development)}

    it 'I see the character with that id and its attributes' do
      visit "/character/#{arrested_development.id}"
      save_and_open_page

      expect(page).to have_content(arrested_development.name)
      expect(page).to have_content(arrested_development.streaming)
      expect(page).to have_content(arrested_development.number_of_seasons)
      expect(page).to have_content(arrested_development.year_end)

      expect(page).to_not have_content(schitts_creek.name)
  end
end