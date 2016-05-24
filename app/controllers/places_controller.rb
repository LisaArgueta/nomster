class PlacesController < ApplicationController

  def index
    @places = Place.page(params[:page]).per(2)
  end

  def new
  end
  
end