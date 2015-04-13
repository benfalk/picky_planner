class MealsController < ApplicationController
  delegate :meals, to: :current_user

  def index
    @meals = meals.page(params[:page])
  end

  def new
    @meal = Meal.new
  end

  def edit
    @meal = meals.find(params[:id])
  end

  def update
    @meal = meals.find(params[:id])
    if @meal.update(meal_params)
      redirect_to meals_url
    else
      render :edit
    end
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      current_user.meals << @meal
      redirect_to meals_url
    else
      render :edit
    end
  end

  private

  def meal_params
    params.require(:meal).permit(
      :consumed_at,
      :calories
    )
  end
end
