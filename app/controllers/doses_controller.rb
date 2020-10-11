class DosesController < ApplicationController
  before_action :fetch_smoothie, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.smoothie = @smoothie
    # instance - info - id
    # @human.name (Sean) = @name (5)
    if @dose.save
      redirect_to smoothie_path(@smoothie)
    else
      render 'smoothies/new'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to smoothie_path(@dose.smoothie)
  end

  private

  def fetch_smoothie
    @smoothie = Smoothie.find(params[:smoothie_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end


