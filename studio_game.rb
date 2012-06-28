puts "\n**** Let's keep 'em separated. ****\n\n"
player1 = "larry"
player2 = "curly"
player3 = "moe"
player4 = "shemp"

health1 = 60
health2 = 125
health3 = 100
health4 = 90

puts "#{player1.capitalize} has a health of #{health1}."
puts "#{player2.upcase} has a health of #{health2}."
puts "#{player3.capitalize} has a health of #{health3}.".center(50,'*')
puts "#{player4.capitalize.ljust(40,'.')} #{health4} health"

puts "\n**** Let's keep 'em separated. ****\n"



player = %w["larry", "curly", "moe"]
health = %w[60, 85, 129]

player1health = 60

puts "#{player[1]}\'s health is #{health[1]}"

player.each do |this_one|
  puts "#{this_one}\'s health is #{health[1]}"
end

puts "Now, let's triple #{player1}\'s health."

player1health *= 3

puts "#{player1}\'s health is #{player1health}"


