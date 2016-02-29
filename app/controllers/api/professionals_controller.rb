class Api::ProfessionalController < ApplicationController

  before_action :set_professional , only:[:show, :update, :destroy]

  has_scope :by_sport
  has_scope :by_name

  def index
    respond_with apply_scopes(Professional).all
  end

  def create
    @professional = Professional.create professional_params
    respond_with :api, @professional
  end

  def show
    respond_with :api, @professional
  end

  def update
    @professional.update professional_params
    respond_with :api, @professional
  end

  def destroy
    @professional.destroy
    respond_with :api, @professional
  end

  private

  def professional_params
    params.require(:professional).permit([:name])
  end

  def set_location
    @professional = Location.find params[:id]
  end

end