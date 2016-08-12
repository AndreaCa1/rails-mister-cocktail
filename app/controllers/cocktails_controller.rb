class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  # GET /restaurants/new
  def new
    @cocktail = Cocktail.new
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @cocktail = Cocktail.new(cocktail_params)
      if @cocktail.save
        redirect_to cocktail_path(@cocktail)
      else
        render 'new' #construits moi le html et re balance le au navigateur
      end
    end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

