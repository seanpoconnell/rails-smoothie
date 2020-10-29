class DosesController < ApplicationController
  before_action :fetch_smoothie, only: [:new, :create]

  def new
    @dose = Dose.new
    @ingredient = Ingredient.new
  end

  def create
    # @dose.ingredient_id must = the ingredient_id not the name
    # user inputs name
    # to select the ingredient from params: params[:dose][:ingredient]
    @dose = Dose.new(dose_params)
    
    # this currently does not do anything
    @dose.ingredient_id = params[:dose][:ingredient]
    @dose.smoothie = @smoothie
    # instance - info - id
    # @human.name (Sean) = @name (5)
    @dose.save
    redirect_to smoothy_path(@smoothie)
  end

  private

  def fetch_smoothie
    @smoothie = Smoothie.find(params[:smoothy_id])
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end


