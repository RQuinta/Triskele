class Api::AppointmentsController < ApplicationController

  before_action :set_appointment , only:[:show, :update, :destroy]

  has_scope :by_state
  has_scope :by_name

  def index
    respond_with apply_scopes(Appointment).all
  end

  def create
    @appointment = Appointment.create city_params
    respond_with :api, @appointment
  end

  def show
    respond_with :api, @appointment
  end

  def update
    @appointment.update city_params
    respond_with :api, @appointment
  end

  def destroy
    @appointment.destroy
    respond_with :api, @appointment
  end

  private

  def city_params
    params.require(:appointment).permit([:user_id, :service_id])
  end

  def set_appointment
    @appointment = Appointment.find params[:id]
  end

end
