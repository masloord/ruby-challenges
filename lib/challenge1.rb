# Create a simple calculator that first asks the user what method they would like to use (addition, subtraction, multiplication, division) and then asks the user for two numbers, returning the result of the method with the two numbers. Here is a sample prompt:
#
# ```
# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9
# ```

p 'What calculation would you like to do? (add, sub, mult, div)'
method = gets.chomp
p method
p 'what is ur first number'
first_num = gets.chomp
p first_num
p 'what is ur second number'
second_num = gets.chomp
p second_num

def calculator(methods, first_number, second_number)
  if methods == 'add'
    sum = first_number.to_f + second_number.to_f
    puts "your result is #{sum}?"
  end
  if methods == 'sub'
    sub = first_number.to_f - second_number.to_f
    puts "your result is #{sub}?"
  end
  if methods == 'mult'
    mult = first_number.to_f * second_number.to_f
    puts "your result is #{mult}?"
  end
  if methods == 'div'
    div = first_number.to_f / second_number.to_f
    puts "your result is #{div}?"
  end
end

calculator(method, first_num, second_num)
