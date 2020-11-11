class SmoothiesController < ApplicationController
  def home
    @smoothies = Smoothie.all
    @smoothie = Smoothie.new
  end

  def show
    @smoothie = Smoothie.find(params[:id])
  end

  def new
    @smoothie = Smoothie.new
  end

  def create
    @smoothie = Smoothie.new(smoothie_params)
    if @smoothie.save
      redirect_to smoothy_path(@smoothie)
    end
  end

  def destroy
    @smoothie = Smoothie.find(params[:id])
    @smoothie.destroy
    redirect_to root_path
  end

  private

  def smoothie_params
    params.require(:smoothie).permit(:name, :ingredient, :dose)
  end
end
