class SitcomCharactersController < ApplicationController
  def index
    @sitcom = Sitcom.find(params[:sitcom_id])
    sitcom_id = @sitcom.id
    @sitcom_characters = Character.all.select do |character| 
      character.sitcom_id == sitcom_id
    end
  end
end