class CategoriesController < ApplicationController
  def index
    @categories = Categorie.all
  end

  def show
    @categorie = Categorie.find(params[:id])
  end

  def edit
    @categorie = Categorie.find(params[:id])
  end

  def update
    @categorie = Categorie.find(params[:id])
    categorie_params = params.require(:categorie).permit(:label, :content)
    @categorie.update(categorie_params)
    redirect_to categorie_path(@categorie.id)
  end

  def new
    @categorie = Categorie.new
  end

  def create
    categorie = Categorie.create(categorie_params)
    redirect_to categories_path(categorie.id)
  end

  def destroy
    @categorie = Categorie.find(params[:id])

    @categorie.destroy
    redirect_to categories_path
  end

  private

  def categorie_params
    params.require(:categorie).permit(:label, :content)
  end
end
