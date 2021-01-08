require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
Employee.validates :first_name, :last_name, :store, presence: true
Employee.validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

Store.validates :name, length: { minimum: 3 }
Store.validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

def apparel_check
  if !mens_apparel && !womens_apparel
    errors.add(:apparel_check, "store must carry either mens or womens apparel")
  end
end

Store.validate :apparel_check

puts 'Input name for the store:'
@store_name = gets.chomp

store = Store.create(name: @store_name)

store.errors.messages.each do |key, message|
  puts "error: #{key} > #{message}"
end