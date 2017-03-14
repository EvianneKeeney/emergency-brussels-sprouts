class Container
  attr_reader  :weight, :maximum_holding_weight
  attr_accessor :ingredients
  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def fill_with_ingredient(ingredient)

    max_fill = maximum_holding_weight / ingredient.weight
    max_fill = max_fill.to_i
    max_fill.times do
       @ingredients << ingredient
    end
    container_weight_full = max_fill * ingredient.weight + weight
    container_weight_full = container_weight_full.to_i
    @weight = container_weight_full
  end

  def which_ingredient
    ingredients[0].name
  end

  def how_many_ingredients
    @ingredients.length
  end

  def remove_one_ingredient
    @ingredients.pop
  end

  def empty
    @ingredients.clear
  end

end
