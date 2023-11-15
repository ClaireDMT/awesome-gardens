class PlantsController < ApplicationController
  def new
    @plant = Plant.new
    @garden = Garden.find(params[:garden_id])
  end

  def create
    @plant = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden # same as: @plant.garden_id = @garden.id
    @plant.save
    redirect_to garden_path(@garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
