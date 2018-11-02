require_relative '../config/environment.rb'
# require_relative './app/models/recipe.rb'

u1 = User.new("Esther")
u2 = User.new("Anna")
u3 = User.new("Matt")
u4 = User.new("Gavin")

r1 = Recipe.new("Spaghetti")
r2 = Recipe.new("Tiramisu")
r3 = Recipe.new("Shrimp Scampi")
r4 = Recipe.new("Gelato")

rc1 = RecipeCard.new(r1, u3, "12 Dec 2016", 5)
rc2 = RecipeCard.new(r2, u4, "20 Jul 2015", 2)
rc3 = RecipeCard.new(r4, u1, "24 Nov 2012", 4)
rc4 = RecipeCard.new(r3, u2, "01 Jan 2000", 1)

i1 = Ingredient.new("Tomato")
i2 = Ingredient.new("Milk")
i3 = Ingredient.new("Butter")
i4 = Ingredient.new("Eggs")

a1 = Allergen.new(i1, u1)
a2 = Allergen.new(i1, u2)
a3 = Allergen.new(i4, u3)
a4 = Allergen.new(i2, u4)
a5 = Allergen.new(i2, u1)
a6 = Allergen.new(i3, u2)
a7 = Allergen.new(i3, u3)
a8 = Allergen.new(i1, u4)


ri1 = RecipeIngredient.new(i1, r2)
ri2 = RecipeIngredient.new(i2, r1)
ri3 = RecipeIngredient.new(i3, r4)
ri4 = RecipeIngredient.new(i4, r3)


binding.pry
