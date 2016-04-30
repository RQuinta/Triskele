class Api::ServicesController < ApplicationController

  before_filter :authenticate, only: [:create, :update, :destroy]
  before_action :set_service , only:[:show, :update, :destroy]

  has_scope :by_sport
  has_scope :by_professional
  has_scope :by_city
  has_scope :with_city, type: :boolean

  def index
    services = apply_scopes(Service).all
    respond_to do |format|
      format.json do
        render :json => services.to_json(:include => [:city] )
      end
    end
  end

  def create
    service_params[:aproved] = false
    if service_params[:max_clients] > 1
      service_params[:collective] = true  
    else
      service_params[:collective] = false
    end 
    if service_params[:daytime].present? 
      service_params[:event] = true  
    else
      service_params[:event] = false
    end
    @service = Service.create service_params 
    respond_with :api, @service
  end

  def show
    respond_to do |format|
      format.json do
        render :json => @service.to_json(:include => [:city, :sports, :additionals, :service_pictures] )
      end
    end

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
    params.require(:service).permit([:name, :bring, :daytime, :description, :duration, :how_to_get, 
      :included, :max_clients, :min_clients, :not_included, :physical_effort, :place, :price, :rating,
      :restrictions, :short_description, :longitude, :latitude, :city_id, :professional_id, sport_ids: [] ])
  end

  def set_service
    @service = Service.find params[:id]
  end

end