class Ingredient
  attr_accessor :name

  @@all = []

  def initialize(i_name)
    @name = i_name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergens #array of allergens that are ingredients
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  # def most_common_allergen
  #   allergens
  # end



end #class Ingredient
