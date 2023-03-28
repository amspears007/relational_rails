class Sitcom < ApplicationRecord
  has_many :characters, dependent: :destroy


  def self.sort_by_created_at
    # require 'pry'; binding.pry
    order(:created_at)
  end

  def char_count
    characters.count
  end
end