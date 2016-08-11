class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    @ingredient =Ingredient.new
  end

  # GET /restaurants/new
  def new
    @cocktail = Cocktail.new
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @cocktail = Cocktail.new(cocktail_params)
    respond_to do |format|
      if @cocktail.save
        redirect_to @cocktail_path
      else
        render :new
      end
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
