books = ["Blink", "Freakonomics", "Outliers"]

(0..8).each do |index|
  puts "books[#{index}] = #{books[index]}"
end

puts "\nbooks.size = #{books.size}\n\n"

morebooks = []
morebooks.push "Agile Web Development With Rails"
morebooks.push "Ruby on Rails 3 Tutorial"
morebooks.push "The Rails 3 Way"
morebooks.push "Design Patterns in Ruby"
morebooks.push "The Art of Computer Programming"

index = 0

puts "\nThe complete array: #{morebooks}\n\n"

morebooks.each do |title|
  puts "morebooks[#{index}] = #{title}"
  index += 1
end

puts morebooks.join(" and ")

# while morebooks
#   puts "\n#{morebooks.pop}"
# end

# morebooks.each do
#   puts "\n#{morebooks.pop}"
# end

puts "\nStart popping now.\n"
puts morebooks.pop
puts morebooks.pop
puts morebooks.pop
puts morebooks.pop
puts morebooks.pop

puts "\nThe complete array: #{morebooks}"

puts "morebooks = nil" if morebooks == nil

puts "\n\n\n*************\n"
20.times { |iteration| puts "This is iteration #{iteration}."}

puts "\n\n\n*************\n"
1.upto(20) { |iteration| puts "This is iteration #{iteration}."}

puts "\n\n\nnumbers\n"
numbers = (1..15).to_a
puts numbers

bigger_than = numbers.select { |n| n > 5 } # idiomatic Ruby!
puts "\n\n\nbigger_than\n"
puts bigger_than


even_nums = numbers.select { |n| n.even? } # idiomatic Ruby!
puts "\n\n\neven_nums\n"
puts even_nums

odd_nums = numbers.reject { |n| n.even? } # idiomatic Ruby!
puts "\n\n\nodd_nums (using .reject)\n"
puts odd_nums

evens, odds = numbers.partition { |n| n.even? } # idiomatic Ruby!
puts "\n\n\nevens\n"
puts evens
puts "\n\n\nodds\n"
puts odds

reduction = numbers.reduce { |sum, n| sum + n } # idiomatic Ruby!
puts "\n\n\nreduction\n"
puts reduction

reduction = numbers.reduce(:+) # idiomatic Ruby! Reduce is a synonym for inject.
puts "\n\n\nreduction (with symbol)\n"
puts reduction


puts "\n\n\n*********** Now Experimenting with Sorting ***************\n\n"
scout_law = %w(trustworthy loyal helpful friendly courteous kind obedient cheerful thrifty brave clean reverent)
scout_law.each {|law| puts law.capitalize }
puts "\n\n"
scout_law.sort.each {|law| puts law.capitalize }


