class Api::SportsController < ApplicationController

  before_action :set_sport , only:[:show, :update, :destroy]

  has_scope :by_name
  has_scope :with_services, :type => :boolean
  has_scope :only_active, type: :boolean

  def index
    respond_with apply_scopes(Sport).all
  end

  def create
    @sport = Sport.create sport_params
    respond_with :api, @sport
  end

  def show
    respond_with :api, @sport
  end

  def update
    @sport.update sport_params
    respond_with :api, @sport
  end

  def destroy
    @sport.destroy
    respond_with :api, @sport
  end

  private

  def sport_params
    params.require(:sport).permit([:name])
  end

  def set_sport
    @sport = Sport.find params[:id]
  end

end