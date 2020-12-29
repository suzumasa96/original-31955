class FoodRacksController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_food_rack, only: [:edit, :show, :update, :destroy]
 
  def index
    @food_racks = FoodRack.order("created_at DESC")
  end

  def new
    @food_rack = FoodRack.new
  end

  def create
    @food_rack = FoodRack.new(foodrack_params)
    if @food_rack.valid?
      @food_rack.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @food_rack.update(foodrack_params)
      redirect_to food_rack_path, method: :get
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @food_rack.user_id
      redirect_to root_path if @food_rack.destroy
    end
  end

  def show
    @food_rack = FoodRack.find(params[:id])
  end

  private

  def foodrack_params
    params.require(:food_rack).permit(:food_name,:picture,:category_id,:month_id,:day_id,:memo).merge(user_id: current_user.id)
  end

  def set_food_rack
    @food_rack = FoodRack.find(params[:id])
  end
end
