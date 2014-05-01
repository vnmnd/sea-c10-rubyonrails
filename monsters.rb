=begin
Note: I had a rough week last week due to personal issues, which is why I'm turning in the homework late.
Since it looks as if the current monsters.rb contains the solutions to the answers, I thought I'd add
a few monsters and attributes to the pre-existing monsters. 
=end

$monsters = []

$monsters << {
  :name => 'Zombie',
  :nocturnal => false,
  :dangers => ['bites', 'scratches'],
  :vulnerabilities => ['fire', 'decapitation'],
  :legs => 2,
  #HP in this case means "hit points"
  :hp => 1300
}
$monsters << {
  :name => 'Mummy',
  :nocturnal => false,
  :dangers => ['bites', 'scratches', 'curses'],
  :vulnerabilities => ['fire', 'decapitation', 'cats'],
  :legs => 2,
  :hp => 1700
}
$monsters << {
  :name => 'Vampire',
  :nocturnal => true,
  :dangers => ['bites', 'hypnosis'],
  :vulnerabilities => ['wood', 'decapitation', 'crosses', 'holy_water', 'garlic', 'daylight'],
  :legs => 2,
  :hp => 3000
}
$monsters << {
  :name => 'Werewolf',
  :nocturnal => true,
  :dangers => ['bites', 'scratches'],
  :vulnerabilities => ['silver'],
  :legs => 4,
  :hp => 2700
}
$monsters << {
  :name => 'Blob',
  :nocturnal => false,
  :dangers => ['suffocation'],
  :vulnerabilities => ['CO2', 'ice', 'cold'],
  :legs => 0,
  :hp => 9001
}
$monsters << {
  :name => 'Medusa',
  :nocturnal => true,
  :dangers => ['petrification'],
  :vulnerabilities => ['mirrors', 'blades', 'decapitation'],
  :legs => 1,
  :hp => 12000
}
$monsters << {
  :name => 'Catoblepas',
  :nocturnal => false,
  :dangers => ['trampling', 'mauling', 'poison'],
  :vulnerabilities => ['slowness'],
  :legs => 4,
  :hp => 30000
}



puts "How many monsters are two legged?"
puts $monsters.select{|m| m[:legs] == 2 }.size
puts $monsters.count{ |m| m[:legs] == 2 }

puts "How many monsters are nocturnal?"
puts $monsters.count{ |m| m[:nocturnal] == true }

puts "What are the names of the monsters that are nocturnal?"
puts $monsters.select{ |m| m[:nocturnal] == true }.map{|m| m[:name]}
puts $monsters.select{ |m| m.fetch(:nocturnal) == true }.map{|m| m[:name]}

puts "How many legs do all our monsters have?"
puts $monsters.map{ |m| m[:legs]}.inject{|sum, l| sum + l }
puts $monsters.map{ |m| m[:legs]}.inject(0, :+)
puts $monsters.map{ |m| m[:legs]}.reduce(:+)
puts $monsters.select{ |m|  m[:legs] > 0}.map{ |m|m[:legs] }.reduce(:+)

puts "What are the 2 most common dangers of our monsters?"
puts $monsters.map{|m| m[:dangers]}.flatten.inject(Hash.new(0)){|h,d| h[d] += 1; h}.sort_by{|k,v| v}[-2..-1].map{|a| a[0]}

puts "How many hit points does each monster have?"
puts $monsters.map{|m| m[:hp]}

count = Hash.new(0)
$monsters.map{|m| m[:dangers]}.flatten.each{|d| count[d]+= 1}
count.each { |k,v| puts k if v == count.values.max || v == count.values.max - 1 }


puts "What are the 2 most common vulnerabilities of our monsters?"
 puts $monsters.map{|m| m[:vulnerabilities]}.flatten.inject(Hash.new(0)){|h,d| h[d] += 1; h}.sort_by{|k,v| v}[-2..-1].map{|a| a[0]}

 puts $monsters.flat_map{|m| m[:vulnerabilities]}.group_by{ |i| i }.values.sort_by{ |i| i.size }.last(2).flatten.uniq







