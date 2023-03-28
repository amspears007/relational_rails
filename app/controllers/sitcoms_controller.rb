class SitcomsController < ApplicationController
  def index
    @sitcoms = Sitcom.sort_by_created_at
  end

  def show
    @sitcom = Sitcom.find(params[:id])
  end
end