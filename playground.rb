# puts adds new like but print does not
puts "Hello World!"
print "Hello World! \n"
puts "TryRuby :: https://ruby.github.io/TryRuby/"

# Variable
greeting = "Hello World! - from variable"
puts greeting

# Define method
def say_hi
    puts "Hello World! - from method"
end
# Call method
say_hi

# Method with arguments
def say_hello(arg)
  puts arg
end
say_hello("Hello World! - from method arguments")

# String operations
# Concatenation
first_name = "Sujit"
last_name = "Singh"
puts first_name + " " + last_name
# Interpolation
puts "My first name is #{first_name} and my last name is #{last_name}"
# Interpolation works only with double quotes
puts 'My first name is #{first_name} and my last name is #{last_name}'
puts "My first name is \#{first_name} and my last name is \#{last_name}"
puts first_name.length
puts first_name.reverse
puts first_name.capitalize
puts first_name.empty?

# Get input from user
puts "Enter first name : "
# first_name = gets.chomp
puts "Your first name is : #{first_name}"

# Array
puts "*********** Array"
a = [1,2,3,4,5,6,7]
p a[0]
a = 1..100
print a.class
print a.to_a
a = "a".."z"
puts
print a.to_a
puts
print a.to_a.shuffle
b = a.to_a.push("SUJIT")
puts
print b.to_a

puts
print "Printing array using for loop : "
for i in b
  print i
end

puts
b.each do |element|
  print element+"! "
end

puts "*********** Hash Table"
# Hash
h = {'a' => 1, 'b' => 'Letter-b', 'c' => 3, 'd' => 4, 'e' => 5}
p h
p h['a']
h.each do |k,v|
  puts "Key= #{k}(#{k.class}) Value= #{v}(#{v.class})"
end
h.delete('a')
p h

puts "Snake Case : this_is_snake_case"
puts "Camel Case : ThisIsCamelCase"



