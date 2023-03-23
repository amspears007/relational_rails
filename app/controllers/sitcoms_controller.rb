class SitcomsController < ApplicationController
  def index
    @sitcoms = Sitcom.all
  end
end