class Api::CountriesController < ApplicationController

  before_action :set_country , only:[:show, :update, :destroy]

  def index
    respond_with apply_scopes(Country).all
  end

  def create
    @country = Country.create country_params
    respond_with :api, @country
  end

  def show
    respond_with :api, @country
  end

  def update
    @country.update country_params
    respond_with :api, @country
  end

  def destroy
    @country.destroy
    respond_with :api, @country
  end

  private

  def country_params
    params.require(:country).permit([:name])
  end

  def set_country
    @country = Country.find params[:id]
  end

end