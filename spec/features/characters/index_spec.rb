require 'rails_helper'

RSpec.describe '/characters(Character Index Page)', type: :feature do
  #User Story 3
  describe 'as a visitor when I visit the character index page' do
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
    let!(:phil) {Character.create!(name: "Phil Dunphy", disposition: 'fun-loving, self described cool dad', has_job: true, number_of_children: 3, sitcom: modern_family)}

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

      expect(page).to have_content(george_michael.disposition)
      expect(page).to have_content(jay.number_of_children)  
      expect(page).to have_content(phil.disposition)
    end
  end

    describe 'As a visitor I visit any page on the site' do
      #User story 8
      it 'I see a link at the top of the page that takes me to the Characters Index' do
      visit '/sitcoms'
      # save_and_open_page


      click_link("List of all Characters")

      expect(current_path).to eq('/characters')
      
    end
  end
end