class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @places = Place.find by(params => "id")
  end

  def new
    @places = Place.new
  end

  def create
    @place = Place.new
    @place["title"] = params ["title"]
    @place["date"] = params ["date"]
    @place["description"] = params ["description"]

    @place.save
    redirect_to "/places"
    
    end
  end
end