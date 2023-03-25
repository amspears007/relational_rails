class SitcomsController < ApplicationController
  def index
    @sitcoms = Sitcom.all
    sorted_sitcoms
    time_stamp_sitcoms = @sitcoms.map {|sitcom| sitcom.created_at}
    time_stamp_sitcoms.sort
    require 'pry'; binding.pry
  end

  def sorted_sitcoms
    time_stamp_sitcoms = @sitcoms.map {|sitcom| sitcom.created_at}
    time_stamp_sitcoms.sort
  end

  def show
    @sitcom = Sitcom.find(params[:id])
  end
end