class SitcomsController < ApplicationController
  def index
    @sitcoms = Sitcom.sort
  end

  def show
    @sitcom = Sitcom.find(params[:id])
  end
end