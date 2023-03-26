require 'rails_helper'

RSpec.describe Sitcom, type: :model do
  describe 'relationships' do
    it { should have_many :characters }
  end

  it 'can sort sitcoms by the most recently created' do
    schitts_creek = Sitcom.create!(name: "Schitt's Creek", streaming: true, number_of_seasons: 6, year_end: 2020)
    arrested_development = Sitcom.create!(name: "Arrested Development", streaming: true, number_of_seasons: 5, year_end: 2019)
    modern_family = Sitcom.create!(name: "Modern Family", streaming: true, number_of_seasons:11, year_end: 2020)

    expect(Sitcom.sort).to eq([schitts_creek, arrested_development, modern_family])
  end

  it 'can counts number of characters in each sitcom' do
    
  end
  


end