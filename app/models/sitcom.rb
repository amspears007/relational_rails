class Sitcom < ApplicationRecord
  has_many :characters


  def self.sort
    order(:created_at)
  end

  def char_count
    characters.count
  end
end