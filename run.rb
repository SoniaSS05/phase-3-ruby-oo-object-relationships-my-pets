require_relative './lib/owner.rb'
require_relative './lib/cat.rb'
require_relative './lib/dog.rb'

sonia = Owner.new("Sonia")
sonia.buy_cat("mimi")


Cat.new("mimo", "Alvee")

leo= Owner.new("Leonel")
max = Dog.new("max", leo)
leo.buy_dog("benito")
#p leo
#p Owner.all
#p Cat.all

#p sonia.cats
#p leo.dogs
#p leo.walk_dogs
 Owner.all
 leo.dogs.map {|dog| dog.mood = "nervous"}
 p leo.dogs.map {|dog| dog.owner=nil}

#p var
#p sonia.walk_dogs