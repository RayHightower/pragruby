def conversation(admonition)
  puts "Hello"
  puts admonition.capitalize
  puts "Goodbye"
end

def convo2
  puts "Hello"
  yield
  puts "Goodbye"
end

def train
  puts "Here comes the train"
  yield
  puts "The train has left the station!"
end

def cinco_times
  5.times do |counter|
    printf "#{counter +1}. "
    yield
  end
end

def five_times
  1.upto 5 do |counter|
    n = counter
    yield n
    puts "\n"
  end
end

five_times do |n| 
  puts "#{n} situps" 
  puts "#{n} pushups" 
  puts "#{n} chinups" 
end
