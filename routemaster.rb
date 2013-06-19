require 'pry'
require 'pry-debugger'
$debug = false
$verbose = true

# Debug ##
binding.pry if $debug
def say(message)
  puts message if $verbose
end
#########

# Data model for Stations and Lines
N = {-1 => '8th', 0 => 'Union Square',  1 => '23rd',  2 => '28th',  3 => '34th',  4 => 'Times Square'}
L = {-2 => '8th', -1 => '6th', 0 => 'Union Square',  1 => '3rd',  2 => '1st'}
Six = {-1 => 'Astor Place', 0 => 'Union Square',  1 => '23rd',  2 => '28th',  3 => '33rd',  4 => 'Grand Central'}

subway = {:N=>N, :L=> L, :Six=>Six}

# Work flow
puts "Hello, welcome to the routemaster of mini New York. I'll tell you how many stops on your journey?"
puts "Where are you travelling from?"
origin = gets.chomp
# EXTRA  Check if they typed an existing station
puts "Which line is that on? N, L or Six?"
origin_line = gets.chomp.to_sym

puts "And, where are you travelling to?"
destination = gets.chomp
# EXTRA  Check if they typed an existing station
puts "Which line is that on? N, L or Six?"
destination_line = gets.chomp.to_sym
say("#{destination_line}")

say(subway[destination_line].key(destination).to_i)
number_of_stops = subway[destination_line].key(destination).to_i.abs  + subway[origin_line].key(origin).to_i.abs

if origin_line == destination_line
  puts "Your destination is in #{number_of_stops} stops. \nPlease remember to take your bags"
else
  puts "You will go through #{number_of_stops} stops and you must change at Union Square. \nPlease remember to take your bags"
end
