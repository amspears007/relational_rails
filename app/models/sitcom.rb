class Sitcom < ApplicationRecord
  has_many :characters


  def self.sort
    # require 'pry'; binding.pry
    order(:created_at)
  end

  def char_count
    characters.count
  end
end