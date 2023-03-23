require 'rails_helper'

RSpec.describe '/sitcoms (Sitcom Index Page)', type: :feature do
  #User Story 1
  describe 'as a visitor when I visit the sitcom index page' do
    it 'I see the name of each sitcom' do
      visit '/sitcoms'

      expect(page).to have_content(schitts_creek.name)
      expect(page).to have_content(parks_and_rec.name)
      
    end
  end
end