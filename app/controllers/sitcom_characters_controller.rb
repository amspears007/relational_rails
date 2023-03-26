class SitcomCharactersController < ApplicationController
  def index
    @sitcom = Sitcom.find(params[:sitcom_id])
    @sitcom.characters
  
  end
end