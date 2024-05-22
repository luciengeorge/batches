class PlantsController < ApplicationController
  def create
    # find the garden using the :garden_id
    @garden = Garden.find(params[:garden_id])
    # create a new instance of plant
    @plant = Plant.new(plant_params)
    # assign the garden to the plant
    @plant.garden = @garden
    # check if if saves
    if @plant.save
      # if it does redirect somewhere
      redirect_to garden_path(@garden)
      # else
    else
      # render 'gardens/show' with a status 422
      render 'gardens/show', status: :unprocessable_entity
    end
  end

  def destroy
    # DELETE /plants/:id
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to garden_path(@plant.garden), status: :see_other
  end

  private

  def plant_params
    # take the stuff from the form -> creating the strong params
    params.require(:plant).permit(:name, :image_url)
  end
end
