class Api::LanguagesController < ApplicationController

  before_action :set_language , only:[:show, :update, :destroy]

  def index
    respond_with :api, Language.all
  end

  def create
    @language = Language.create language_params
    respond_with :api, @language
  end

  def show
    respond_with :api, @language
  end

  def update
    @language.update language_params
    respond_with :api, @language
  end

  def destroy
    @language.destroy
    respond_with :api, @language
  end

  private

  def language_params
    params.require(:language).permit([:name, :code])
  end

  def set_language
    @language = Language.find params[:id]
  end

end