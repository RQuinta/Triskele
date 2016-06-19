class Api::ServicesController < ApplicationController

  before_filter :authenticate, only: [:create, :update, :destroy]
  before_action :set_service , only:[:show, :update, :destroy]

  has_scope :by_sport
  has_scope :by_professional
  has_scope :by_city
  has_scope :with_city, type: :boolean
  has_scope :without_deleted, type: :boolean

  def index
    services = apply_scopes(Service).all
    respond_to do |format|
      format.json do
        render :json => services.to_json(:include => [:city, :service_pictures] )
      end
    end
  end

  def create
    s_params = service_params 
    additionals = s_params.delete(:additionals)
    pictures = s_params.delete(:service_pictures_attributes)
    @service = Service.create s_params 
    pictures.each do |service_picture|
      picture = ServicePicture.new service_picture
      picture.service_id = @service.id
      picture.save
    end
    additionals.each do |additional|
      additional = Additional.new additional
      additional.service_id = @service.id
      additional.save
    end
    respond_with :api, @service
  end

  def show
    respond_to do |format|
      format.json do 
        render :json => @service.to_json(:include => [:city, :sports, :acquisitions, :additionals, :service_pictures] )
      end
    end
  end

  def update
    @service.update service_params
    respond_with :api, @service
  end

  def destroy
    @service.deleted = true
    @service.save
    respond_with :api, @service
  end

  private

  def service_params
    params.require(:service).permit([:name, :bring, :daytime, :description, :duration, :how_to_get, 
      :included, :max_clients, :min_clients, :not_included, :physical_effort, :place, :price, :rating,
      :adrenaline, :image, :restrictions, :short_description, :longitude,
      :latitude, :city_id, :professional_id, :required_experience, :event, service_pictures_attributes: [:public_id], additionals: [:description,:excess],  sport_ids: [] ])
  end
  
  def set_service
    @service = Service.find params[:id]
  end

end
