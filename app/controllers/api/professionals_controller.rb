class Api::ProfessionalsController < ApplicationController

  before_action :set_professional , only:[:show, :update, :destroy]

  has_scope :by_sport
  has_scope :by_name

  def index
    respond_with apply_scopes(Professional).all
  end

  def create
    @professional = Professional.create professional_params
    respond_with :api, @professional
  end

  def show
    respond_to do |format|
      format.json do 
        render :json => @professional.to_json(:include => {:services => { :include => :sports }, :acquisitions => {:include => :user, :include => :service} })
      end
    end
  end

  def update
    @professional.update professional_params
    respond_with :api, @professional
  end

  def destroy
    @professional.destroy
    respond_with :api, @professional
  end

  private

  def professional_params
    params.require(:professional).permit([:name, :cpf, :passport, :doc_ident, :active,  languages_ids: [] ])
  end

  def set_professional
    @professional = Professional.find params[:id]
  end

end