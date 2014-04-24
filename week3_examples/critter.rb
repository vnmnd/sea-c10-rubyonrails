class Critter 
  attr_reader :color, :mantra

  def initialize
    @color = "brown"
    @mantra = "Squeek squeekum squeek squeeker"

  end 

  def noise 
    return "squeak!"
  end 

  def smell 
    @smell = "ew!"
  end 


end 