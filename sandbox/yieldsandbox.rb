def conversation
  puts "Hello"
  yield
  puts "Goodbye"
end

def what_yield_does
  puts "A bunch of random stuff."
  yield # Here's where the other stuff gets executed.
  puts "Now we're at the end of the yield block."
end

conversation { puts "Good to meet you!" }

what_yield_does { 3.times do puts "This is the block that gets passed." end }

