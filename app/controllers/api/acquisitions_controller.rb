class Api::AcquisitionsController < ApplicationController

  before_action :set_acquisition_by_id , only:[:update]
  before_action :set_acquisition_by_token , only: [:show]

  has_scope :by_state
  has_scope :by_name

  def index
    respond_with apply_scopes(Acquisition).all
  end

  def create
    @acquisition = Acquisition.create acquisition_params
    respond_with :api, @acquisition
  end

  def show
    respond_to do |format|
      format.json do
        render :json => @acquisition.to_json(:include => [:user, :service, :additional] )
      end
    end
  end

  def update
    @acquisition.update acquisition_params
    respond_with :api, @acquisition
  end

  private

  def acquisition_params
    params.require(:acquisition).permit([:service_id, :user_id, :additional_id, :rating, :commentary, :base_price])
  end

  def set_acquisition_by_token
    @acquisition = Acquisition.find_by(token: params[:id])
  end

  def set_acquisition_by_id
    @acquisition = Acquisition.find params[:id]
  end

end
