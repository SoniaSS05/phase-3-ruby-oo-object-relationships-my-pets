

class Owner

  attr_accessor :pets
  attr_reader :name, :species

  @@all = []

  def initialize(name)
  #def intialize(name)
    @name = name
    # @pets=pets
    @species="human"
    @@all << self 
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.filter {|cat| cat.owner == self}
  end

  def buy_cat(catname)
    # @pets[:cats] << Cat.new(catname)
    Cat.new(catname, self)
  end
  
  def buy_dog(dogname)
    Dog.new(dogname, self)
  end

  def dogs
    Dog.all.filter {|dog| dog.owner == self}
  end

  def walk_dogs
    self.dogs.map {|dog| dog.mood = "happy"}
  end

  def sell_pets
    self.dogs.map {|dog| dog.mood = "nervous"}
    self.cats.map {|cat| cat.mood = "nervous"}
    self.dogs.map {|dog| dog.owner=nil}
    self.cats.map {|cat| cat.owner=nil}
 
  end

  def feed_cats
    self.cats.map {|cat| cat.mood ="happy"}
  end

  def list_pets
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end
end
