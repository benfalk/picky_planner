class MealsController < ApplicationController
  delegate :meals, to: :current_user
  before_filter :filter_meal_attributes!, only: [:update, :create]

  def index
    @meals = meals.page(params[:page])
  end

  def new
    @meal = meals.new
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
    @meal = meals.new(meal_params)
    if @meal.save
      redirect_to meals_url
    else
      render :edit
    end
  end

  private

  def meal_params
    params.require(:meal).permit(
      :consumed_at,
      :calories,
      meal_items_attributes: [:id, :servings, :_destroy, :food_id]
    )
  end

  def filter_meal_attributes!
    params[:meal][:meal_items_attributes] = filtered_meal_item_attributes
  end

  def filtered_meal_item_attributes
    filter.new(food_scope: current_user.foods, attributes: meal_items_attributes).call
  end

  def meal_items_attributes
    return {} unless params[:meal].is_a? Hash
    return {} unless params[:meal][:meal_items_attributes].is_a? Hash
    params[:meal][:meal_items_attributes]
  end

  def filter
    PickyPlanner::MealItemFilter
  end
end
