require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum('annual_revenue')
average_revenue = Store.average('annual_revenue')
over_million = Store.where(['annual_revenue > ?', 1_000_000]).size

puts "Total Revenue -> #{total_revenue}"
puts "Average Revenue -> #{average_revenue}"
puts "Stores with Revenue over $1 million -> #{over_million}"