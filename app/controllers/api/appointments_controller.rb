class Api::AppointmentsController < ApplicationController

  before_action :set_appointment , only:[:show, :update, :destroy]

  has_scope :by_state
  has_scope :by_name

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
    params.require(:appointment).permit([:user_id, :service_id])
  end

  def set_appointment
    @appointment = Appointment.find params[:id]
  end

end
