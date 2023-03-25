class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    # require 'pry'; binding.pry
    @character = Character.find(params[:id])
  end
end