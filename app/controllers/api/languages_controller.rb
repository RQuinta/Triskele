class Api::LanguagesController < ApplicationController

  before_action :set_language , only:[:show]

  def index
    respond_with apply_scopes(Language).all
  end

  def show
    respond_with :api, @language
  end

end