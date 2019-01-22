puts "Welcome to Calculator!!!"

continue = true
while continue
  print "Number 1 = "
  num1 = gets.chomp
  print "Number 2 = "
  num2 = gets.chomp
  print "Operation
  1. Add
  2. Subtract
  3. Multiply
  4. Divide
  5. Modulus : "
  ops = gets.chomp
  if ops == "1"
    result = num1.to_f + num2.to_f
    puts "#{num1} + #{num2} = #{result}"
  elsif ops == "2"
    result = num1.to_f - num2.to_f
    puts "#{num1} - #{num2} = #{result}"
  elsif ops == "3"
    result = num1.to_f * num2.to_f
    puts "#{num1} * #{num2} = #{result}"
  elsif ops == "4"
    result = num1.to_f / num2.to_f
    puts "#{num1} / #{num2} = #{result}"
  elsif ops == "5"
    result = num1.to_f % num2.to_f
    puts "#{num1} % #{num2} = #{result}"
  else
    puts "Wrong Operation"
  end
  print "Do you want to continue (y/n) : "
  intent = gets.chomp
  if intent == 'y'
    continue = true
  else
    continue = false
  end
end
