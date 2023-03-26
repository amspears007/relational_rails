require 'rails_helper'

RSpec.describe 'the sitcoms show page' do
  #User Story 2
  describe 'As a visitor when I visit the sitcom show page' do
    let!(:schitts_creek) {Sitcom.create!(name: "Schitt's Creek", streaming: true, number_of_seasons: 6, year_end: 2020)}
    let!(:arrested_development) {Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)}
    let!(:modern_family) {Sitcom.create!(name: "Modern Family", streaming: true, number_of_seasons:11, year_end: 2020)}

    let!(:david_rose) {Character.create!(name: "David Rose", disposition: 'pretentious & phobic', has_job: true, number_of_children: 0, sitcom:schitts_creek)}
    let!(:moira_rose) {Character.create!(name: "Moira Rose", disposition: 'eccentric former soap opera star', has_job: false, number_of_children: 2,sitcom: schitts_creek)}
    let!(:stevie_budd) {Character.create!(name: "Stevie Budd", disposition: 'sardonic hotel clerk', has_job: true, number_of_children: 0,sitcom: schitts_creek)}
    let!(:lucille_bluth) {Character.create!(name: "Lucille Bluth", disposition: 'ruthless alcoholic', has_job: false, number_of_children: 4,sitcom: arrested_development)}
    let!(:george_michael) {Character.create!(name: "George Michael Bluth", disposition: 'shy & in love with cousin', has_job: true, number_of_children: 0, sitcom: arrested_development)}
    let!(:tobias) {Character.create!(name: "Tobias Funke", disposition: 'never-nude', has_job: false, number_of_children: 1, sitcom: arrested_development)}
    let!(:jay) {Character.create!(name: "Jay Pritchett", disposition: 'patriarch, lover of Gloria, Stella and closets', has_job: true, number_of_children: 4, sitcom: modern_family)}
    let!(:phil) {Character.create!(name: "Phil Dunphy", disposition: 'fun-loving, self describe cool dad', has_job: true, number_of_children: 3, sitcom: modern_family)}



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

      
      expect(page).to have_content(schitts_creek.char_count)
      expect(schitts_creek.char_count).to eq(3)
    end
 
  end
end