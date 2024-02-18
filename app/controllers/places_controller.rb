class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place.title = params[:title]
    @place.date = params[:date]
    @place.description = params[:description]

    @place.save
    redirect_to places_path
  end
end