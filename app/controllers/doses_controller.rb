class DosesController < ApplicationController
before_action :set_cocktail, only: [:new, :create, :destroy]
  def new
    @dose = Dose.new
  end


  # POST /restaurants
  # POST /restaurants.json
  def create
    @dose = Dose.new(cocktail_params)

    respond_to do |format|
      if @dose.save
        redirect_to @dose_path
      else
        render :new
      end
    end
  end

  def destroy
    @cocktail.destroy
    respond_to do |format|
      redirect_to cocktails_url
    end
  end
end
