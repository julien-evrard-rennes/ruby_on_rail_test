class PagesController < ApplicationController
  def salut
    flash.now[:success] = "Bienvenue sur notre site !"
    @name = params[:name]
  end

  def home
  end
end
