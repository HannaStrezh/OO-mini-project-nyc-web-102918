class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
def recipe_card #will return an array that will have User instance
    RecipeCard.all.select do |card|
      card.user == self #if the user info in User matches RC user, we pulled that info
    end
  end
  def recipes # we want to create just an array of recipes, this connects the User to the Recipe through the recipe card.
    recipe_card.map do |each_card|
      each_card.recipe
    end
  end
  ##### come back later
  # def add_recipe_card(recipe, date, rating)
  #     # RecipeCard.new(recipe, self, date, rating)
  # end

end #class User
