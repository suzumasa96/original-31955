class FoodRacksController < ApplicationController
  def index
    @food_racks = FoodRack.all
  end

  def new
    @food_rack = FoodRack.new
  end

  def create
    @food_rack = FoodRack.new(foodrack_params)
    if @food_rack.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def foodrack_params
    params.require(:food_rack).permit(:food_name,:picture,:category_id,:food_deadline,:memo).merge(user_id: current_user.id)
  end
end
