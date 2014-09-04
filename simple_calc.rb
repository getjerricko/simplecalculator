# simple_calc.rb
# Using methods and instance variables 
# Start of file

def greeting
  puts "..Welcome to Simple Calculator App..".center(50)
  puts '-' * 50
end

def play
  ask_1st_num
  ask_2nd_num
  pick_operator
  calculate(@num1, @num2, @op)
  ask_again?
end

def ask_1st_num
  print "Enter the first number:  " 
  @num1 = gets.chomp
end

def ask_2nd_num
  print "Enter the second number: "
  @num2 = gets.chomp
end

def pick_operator
  puts "Select the operator: "
  print "(+ plus, - minus, * times, / divide): "
  @op = gets.chomp.downcase
end

def add(a, b)
  a.to_i + b.to_i
end

def subtract(a, b)
  a.to_i - b.to_i
end

def multiply(a, b)
  a.to_i * b.to_i
end

def divide(a, b)
  # a.to_f / b.to_f
  if a.to_f % b.to_f == 0
    a.to_i / b.to_i         # no decimal 
  else
    a.to_f / b.to_f         # include decimal
  end
end

def calculate(a, b, op)
  case op
  when '+', "plus"
    puts "#{a} #{op} #{b} = #{add(a, b)} \n"
  when '-', "minus"
    puts "#{a} #{op} #{b} = #{subtract(a, b)} \n"
  when '*', "times"
    puts "#{a} #{op} #{b} = #{multiply(a, b)} \n"
  when '/', "divide"
    puts "#{a} #{op} #{b} = #{divide(a, b)} \n"
  else
    puts "Invalid operator. Sorry try again. \n"
    play
  end
end

def ask_again?
  puts "Want to do another calculation? yes or no: "
  again = gets.chomp.downcase
  if again == "yes"
    play
  elsif again == "no"
    puts "Cool. See you later."
    exit
  else
    puts "I don't understand that command. "
    ask_again?
  end
end

# ######## Main Program ##########
greeting 
play

# End of File
