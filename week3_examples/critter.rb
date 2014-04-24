class Critter 
  attr_reader :color, :mantra, :food

  def initialize
    @color = "brown"
    @mantra = "Squeek squeekum squeek squeeker"
    @food = "critter chow"
  end 

  def noise 
    return "squeak!"
  end 

  def play_dead 

  end

  def smell 
    return "ew!"
  end 


end 