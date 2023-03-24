class SitcomsController < ApplicationController
  def index
    @sitcoms = Sitcom.all
  end

  def show
    
  end
end