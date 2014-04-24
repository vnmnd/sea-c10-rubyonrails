$monsters = []

$monsters << {
  :name => 'Zombie',
  :nocturnal => false,
  :dangers => ['bites', 'scratches'],
  :vulnerabilities => ['fire', 'decapitation'],
  :legs => 2
}
$monsters << {
  :name => 'Mummy',
  :nocturnal => false,
  :dangers => ['bites', 'scratches', 'curses'],
  :vulnerabilities => ['fire', 'decapitation', 'cats'],
  :legs => 2
}
$monsters << {
  :name => 'Vampire',
  :nocturnal => true,
  :dangers => ['bites', 'hypnosis'],
  :vulnerabilities => ['wood', 'decapitation', 'crosses', 'holy_water', 'garlic', 'daylight'],
  :legs => 2
}
$monsters << {
  :name => 'Werewolf',
  :nocturnal => true,
  :dangers => ['bites', 'scratches'],
  :vulnerabilities => ['silver'],
  :legs => 4
}
$monsters << {
  :name => 'Blob',
  :nocturnal => false,
  :dangers => ['suffocation'],
  :vulnerabilities => ['CO2', 'ice', 'cold'],
  :legs => 0
}

puts "How many monsters are two legged?"
puts $monsters.select{|m| m[:legs] == 2 }.size
puts $monsters.count{ |m| m[:legs] == 2 }

puts "How many monsters are nocturnal?"
puts $monsters.count{ |m| m[:nocturnal] == true }

puts "What are the names of the monsters that are nocturnal?"
puts $monsters.select{ |m| m[:nocturnal] == true }.map{|m| m[:name]}

puts "How many legs do all our monsters have?"
puts $monsters.map{ |m| m[:legs]}.inject{|sum, l| sum + l }
puts $monsters.map{ |m| m[:legs]}.reduce(:+)

puts "What are the 2 most common dangers of our monsters?"
puts $monsters.map{|m| m[:dangers]}.flatten.inject(Hash.new(0)){|h,d| h[d] += 1; h}.sort_by{|k,v| v}[-2..-1].map{|a| a[0]}

puts "What are the 2 most common vulnerabilities of our monsters?"
puts $monsters.map{|m| m[:vulnerabilities]}.flatten.inject(Hash.new(0)){|h,d| h[d] += 1; h}.sort_by{|k,v| v}[-2..-1].map{|a| a[0]}

