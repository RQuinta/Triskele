class Api::AppointmentsController < ApplicationController

  before_action :set_appointment_by_id , only:[:update]
  before_action :set_appointment_by_token , only: [:show]

  has_scope :by_state
  has_scope :by_name

  def index
    respond_with apply_scopes(Appointment).all
  end

  def create
    @appointment = Appointment.create appointment_params
    respond_with :api, @appointment
  end

  def show
    respond_to do |format|
      format.json do
        render :json => @appointment.to_json(:include => [:user, :service, :additional] )
      end
    end
  end

  def update
    @appointment.update appointment_params
    respond_with :api, @appointment
  end

  def destroy
    @appointment.destroy
    respond_with :api, @appointment
  end

  private

  def appointment_params
    params.require(:appointment).permit([:user_id, :service_id, :base_price, :additional_price, :additional_id, :slots, :daytime, :doubt, :doubt_answer])
  end

   def set_appointment_by_token
    @appointment = Appointment.find_by(token: params[:id])
  end

  def set_appointment_by_id
    @aappointment = Appointment.find params[:id]
  end

end
