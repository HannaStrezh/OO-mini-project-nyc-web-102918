class Recipe
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.most_popular
  #   RecipeCard.
  # e

  def recipe_cards #return array of recipecards with this recipe
    RecipeCard.all.select do |card|
      card.recipe == self
    end
    #to test in pry, use instance ex. r1.recipe_cards
  end

  def users #return an array with all users
    recipe_cards.map do |card|
      card.user
    end
  end

  def ingredient_cards #return array of ingredient instances with the recipe
    RecipeIngredient.all.select do |card|
      card.recipe == self
    end
  end

  def ingredient #return an array of ingredients in recipe
    ingredient_cards.map do |card|
      card.recipe
    end
  end

  def allergens #return an array of ingredients in recipe that are allergens
    Ingredient.all.select do |al_ingredient|
      al_ingredient.allergen == self
    end
  end

end #class Recipe
