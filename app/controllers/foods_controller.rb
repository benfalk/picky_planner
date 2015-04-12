class FoodsController < ApplicationController
  delegate :foods, to: :current_user

  def index
    @foods = foods.page(params[:page])
  end

  def new
    @food = Food.new
  end

  def edit
    @food = foods.find(params[:id])
  end

  def update
    @food = foods.find(params[:id])
    if @food.update(food_params)
      redirect_to foods_url
    else
      render :edit
    end
  end

  def destroy
    @food = foods.find(params[:id])
    if @food.destroy
      redirect_to foods_url
    else
      render :edit
    end
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      current_user.foods << @food
      redirect_to foods_url
    else
      render :edit
    end
  end

  private

  def food_params
    params.require(:food).permit(
      :name,
      :calories,
      :protein,
      :carbohydrates,
      :fats,
      :fiber
    )
  end
end
