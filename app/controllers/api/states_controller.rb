class Api::StatesController < ApplicationController

  before_action :set_state , only:[:show, :update, :destroy]

  has_scope :by_country

  def index
    respond_with apply_scopes(State).all
  end

  def create
    @state = State.create state_params
    respond_with :api, @state
  end

  def show
    respond_with :api, @state
  end

  def update
    @state.update state_params
    respond_with :api, @state
  end

  def destroy
    @state.destroy
    respond_with :api, @state
  end

  private

  def state_params
    params.require(:state).permit([:name])
  end

  def set_state
    @state = State.find params[:id]
  end

end