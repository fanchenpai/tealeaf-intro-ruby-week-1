def say(s)
  puts "==> #{s}"
end

def get_number(name)
  input_ok = false
  until input_ok

    say "Please enter the #{name}..."
    num = gets.chomp
    if num.to_i.to_s == num
      input_ok = true
    else
      puts "Please enter integer only!"
    end
  end
  num
end

def get_operator
  input_ok = false
  until input_ok

    say "Please choose the operation to perform..."
    say "1)Add 2)Subtract 3)Multiply 4)Divide"

    operator = gets.chomp
    if ['1','2','3','4'].index(operator) == nil
      puts "Please enter 1, 2, 3 or 4"
    else
      input_ok = true
    end
  end
  operator
end

first_num = get_number "first number"
second_num = get_number "second number"
operator = get_operator
say "you've entered #{first_num} and #{second_num} to perform option #{operator}"

if operator == '1'
  result = first_num.to_i + second_num.to_i
elsif operator == '2'
  result = first_num.to_i - second_num.to_i
elsif operator == '3'
  result = first_num.to_i * second_num.to_i
else
  unless second_num.to_i == 0
    result = first_num.to_f / second_num.to_f
  else
    result = "Cannot devide a number by zero!"
  end
end

say "Result: #{result}"
