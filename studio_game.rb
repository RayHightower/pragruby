player1 = "larry"
player2 = "curly"
player3 = "moe"

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


