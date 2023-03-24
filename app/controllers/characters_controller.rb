class CharactersController < ApplicationController
  def index
    @characters = Character.all
    # require 'pry'; binding.pry
  end
end