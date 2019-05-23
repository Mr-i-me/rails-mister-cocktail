class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show; end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to @cocktail
    else
      render 'new'
    end
  end

  def edit; end

  def destroy
    @cocktail.destroy
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
