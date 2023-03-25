require 'rails_helper'

RSpec.describe "/sitcoms/:sitcom_id/characters", type, feature do
  describe 'As a visitor when I visit the sitcom characters index page' do
    it 'I see each character with attributes associated with that sitcom' do
      visit "/sitcoms/#{schitts_creek.id}/characters"

      expect(page).to have_content(david_rose.name)
      expect(page).to have_content(moira_rose.name)
      expect(page).to have_content(stevie_budd.name)
      expect(page).to_not have_content(george_michael.name)




    end
  end
end