class SitcomsController < ApplicationController
  def index
    @sitcoms = Sitcom.all
  end

  def show
    @sitcom = Sitcom.find(params[:id])
  end
end