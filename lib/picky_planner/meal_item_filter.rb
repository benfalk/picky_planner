module PickyPlanner
  class MealItemFilter
    attr_reader :food_scope, :attributes

    def initialize(food_scope:, attributes:)
      @food_scope = food_scope
      @attributes = attributes
    end

    def call
      attributes.select do |_key, value|
        value.is_a?(Hash) && scoped_ids.include?(value[:food_id])
      end
    end

    private

    def all_food_ids
      @all_food_ids ||= attributes.values.map { |attr| attr[:food_id] }
    end

    def scoped_ids
      @scoped_ids ||= food_scope
                      .where(id: all_food_ids)
                      .pluck(:id)
                      .map(&:to_s)
    end
  end
end
