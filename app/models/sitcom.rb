class Sitcom < ApplicationRecord
  has_many :characters


  def self.sort
    order(:created_at)
  end
end