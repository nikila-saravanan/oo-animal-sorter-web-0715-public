# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

class AnimalSorter
  LAND_ANIMALS = ["aardvark","cat","elephant"]
  SEA_ANIMALS = ["marlin","octopus","fish"]

  def initialize(animal_array)
    @animal_array = animal_array
  end

  def to_a
    animal_list = [[],[]]
    @animal_array.each do |animal|
      if SEA_ANIMALS.include?(animal)
        animal_list[0] << animal
      elsif LAND_ANIMALS.include?(animal)
        animal_list[1] << animal 
      end
    end
    return animal_list
  end

end