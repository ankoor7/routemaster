require 'pry'
require 'pry-debugger'
debug = false

binding.pry if debug

def say(message)
  puts message if $debug
end

N = {-1 => '8th', 0 => 'Union Square',  1 => '23rd',  2 => '28th',  3 => '34th',  4 => 'Times Square'}
L = {-2 => '8th', -1 => '6th', 0 => 'Union Square',  1 => '3rd',  2 => '1st'}
Six = {-1 => 'Astor Place', 0 => 'Union Square',  1 => '23rd',  2 => '28th',  3 => '33rd',  4 => 'Grand Central'}


puts "Hello, welcome to the routemaster of mini New York. I'll tell you how many stops on your journey?"
puts "Where are you travelling from?"
origin = gets.chomp
# Check if they typed an existing station

puts "And, where are you travelling to?"
destination = gets.chomp
# Check if they typed an existing station

start_number = N.key(origin)
end_number = N.key(destination)

number_of_stops = end_number - start_number
puts "You will travel #{number_of_stops.abs} number of stops"