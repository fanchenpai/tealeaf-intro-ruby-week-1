def say(s)
  puts "==> #{s}"
end


say "Please enter the first number..."
first_num = gets.chomp

say "Please enter the second number..."
second_num = gets.chomp

say "Please choose an operator..."
say "(a)Add (s)Subtract (m)Multiply (d)Division"

say "you've entered #{first_num} and #{second_num}"