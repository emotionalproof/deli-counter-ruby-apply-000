#!/usr/bin/env ruby

require_relative "../deli_counter"

deli = ["Chase", "Bobby", "Jimmy", "Carley"]

puts "Welcome to the Deli . . . Time to Nosh!"
line(deli)

puts "Would you like to take a number?"
puts "Please enter 'Y' or 'N'"
response = gets.strip

if response.upcase == "Y"
  "Great! Please enter your name and then go to the back of the line"
  name = gets.strip.capitalize
  take_a_number(deli, name)
