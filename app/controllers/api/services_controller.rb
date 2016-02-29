class Api::ServicesController < ApplicationController

  before_action :set_service , only:[:show, :update, :destroy]

  has_scope :by_sport
  has_scope :by_professional
  has_scope :by_city
  has_scope :with_city, type: :boolean

  def index
    respond_with apply_scopes(Service).all
  end

  def create
    @service = Service.create service_params
    respond_with :api, @service
  end

  def show
    respond_with :api, @service
  end

  def update
    @service.update service_params
    respond_with :api, @service
  end

  def destroy
    @service.destroy
    respond_with :api, @service
  end

  private

  def service_params
    params.require(:service).permit([:name])
  end

  def set_service
    @service = Service.find params[:id]
  end

end