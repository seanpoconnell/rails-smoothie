class SmoothiesController < ApplicationController
  def index
    @smoothies = Smoothie.all
  end

  def show
    @smoothie = Smoothie.find(params[:id])
    @does = Dose.new
  end

  def new
    @smoothie = Smoothie.new
  end

  def create
    @smoothie = Smoothie.new(smoothie_params)
    if @smoothie.save
      redirect_to smoothie_path(@smoothie)
    else
      render :new
    end
  end

  private

  def smoothie_params
    params.require(:smoothie).permit(:name)
  end
end
