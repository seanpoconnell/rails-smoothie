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
    @dose.save
    redirect_to smoothy_path(@smoothie)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to smoothie_path(@dose.smoothie)
  end

  private

  def fetch_smoothie
    @smoothie = Smoothie.find(params[:smoothy_id])
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end


