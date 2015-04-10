class FoodsController < ApplicationController
  def index
    @foods = Food.page(params[:page])
  end

  def new
    @food = Food.new
  end

  def edit
    @food = Food.find(params[:id])
  end

  def create
    @food = Food.new(food_params)
    if @food.save
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
