require 'rails_helper'

RSpec.describe Sitcom, type: :model do
  before do
    Sitcom.destroy_all
  end
  describe 'relationships' do
    it { should have_many :characters }
  end

  it 'can sort sitcoms by the most recently created' do
    schitts_creek = Sitcom.create!(name: "Schitt's Creek", streaming: true, number_of_seasons: 6, year_end: 2020)
    arrested_development = Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)
    modern_family = Sitcom.create!(name: "Modern Family", streaming: true, number_of_seasons:11, year_end: 2020)

    
    expect(Sitcom.sort_by_created_at).to eq([schitts_creek, arrested_development, modern_family])
  end

  it 'can counts number of characters in each sitcom' do
    arrested_development = Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)
    lucille_bluth = Character.create!(name: "Lucille Bluth", disposition: 'ruthless alcoholic', has_job: false, number_of_children: 4,sitcom: arrested_development)
    george_michael = Character.create!(name: "George Michael Bluth", disposition: 'shy & in love with cousin', has_job: true, number_of_children: 0, sitcom: arrested_development)
    tobias = Character.create!(name: "Tobias Funke", disposition: 'never-nude', has_job: false, number_of_children: 1, sitcom: arrested_development)

    expect(arrested_development.char_count).to eq(3)
  end
end