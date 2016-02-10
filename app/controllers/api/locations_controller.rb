class Api::LocationsController < ApplicationController

  before_action :set_location , only:[:show, :update, :destroy]

  has_scope :by_city

  def index
    respond_with apply_scopes(Location).all
  end

  def create
    @location = Location.create location_params
    respond_with :api, @location
  end

  def show
    respond_with :api, @location
  end

  def update
    @location.update location_params
    respond_with :api, @location
  end

  def destroy
    @location.destroy
    respond_with :api, @location
  end

  private

  def location_params
    params.require(:location).permit([:name])
  end

  def set_location
    @location = Location.find params[:id]
  end

end