class DosesController < ApplicationController
  before_action :fetch_smoothie, only: [:new, :create]

  def new
    @dose = Dose.new
    @ingredient = Ingredient.new
  end

  def create
    @dose = Dose.new(dose_params)
    # assign the picked ingredient from the params to the @dose.ingredient
    # to select the ingredient from params: params[:dose][:ingredient]
    @dose.ingredient_id = params[:dose][:ingredient]
    # @dose.smoothie has an empty id. Assign it an id (and name) by equating it to @smoothie (has smoothie_id and name)
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


