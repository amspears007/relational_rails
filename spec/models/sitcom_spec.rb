require 'rails_helper'

RSpec.describe Sitcom, type: :model do
  describe 'relationships' do
    it {should have_many :characters}
  end
end