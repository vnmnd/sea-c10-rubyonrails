require_relative 'critter'

describe Critter do 

  # You can do a before block like this if you need a specific instance of the class: 

  # before :each do
  #   @critter = Critter.new 
  # end

  # Set the "it": 
  # subject { @critter }

  context "methods" do 
    # if you don't do a before block, "it" is just an  instance of the class being described:
    it { should respond_to(:noise) }
    it { should respond_to(:play_dead)}

    # this is the same sort of test as line 16, but a more verbose syntax
    it "should have a smell method" do 
      Critter.new.should respond_to(:smell)
    end 

  end 

  context "accessible attributes" do 
    its(:color) { should == "brown" }
    its(:mantra) { should == "Squeek squeekum squeek squeeker"} 
    its(:food) { should == "critter chow"}
  end 

end 