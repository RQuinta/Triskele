class Api::DoubtsController < ApplicationController

  def create
    AdminNotifier.send_doubt_email(doubt_params).deliver_later  
    render json: {}, status: 201
  end

  private

  def doubt_params
    params.require(:doubt).permit([:email, :name, :message])
  end

end
