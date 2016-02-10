class Api::EnterpriseController < ApplicationController

  before_action :set_enterprise , only:[:show, :update, :destroy]

  has_scope :by_city
  # has_scope :by_sport

  def index
    respond_with apply_scopes(Enterprise).all
  end

  def create
    @enterprise = Enterprise.create enterprise_params
    respond_with :api, @enterprise
  end

  def show
    respond_with :api, @enterprise
  end

  def update
    @enterprise.update enterprise_params
    respond_with :api, @enterprise
  end

  def destroy
    @enterprise.destroy
    respond_with :api, @enterprise
  end

  private

  def enterprise_params
    params.require(:enterprise).permit([:name])
  end

  def set_enterprise
    @enterprise = Enterprise.find params[:id]
  end

end