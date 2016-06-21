class Api::CitiesController < ApplicationController

  before_action :set_city , only:[:show, :update, :destroy]

  has_scope :by_state
  has_scope :by_name

  has_scope :only_active, type: :boolean

  def index
    respond_with apply_scopes(City).all
  end

  def create
    @city = City.create city_params
    respond_with :api, @city
  end

  def show
    respond_with :api, @city
  end

  def update
    @city.update city_params
    respond_with :api, @city
  end

  def destroy
    @city.destroy
    respond_with :api, @city
  end

  private

  def city_params
    params.require(:city).permit([:name])
  end

  def set_city
    @city = City.find params[:id]
  end

end
