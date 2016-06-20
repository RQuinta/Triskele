class Api::ServiceChangesController < ApplicationController

  def create
    @service_changes = ServiceChanges.create service_changes_params
  	render json: {}, status: 201
  end

  private

  def service_changes_params
    params.require(:service_changes).permit([:service_id, :message])
  end

end
