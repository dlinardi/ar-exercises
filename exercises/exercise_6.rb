require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "David", last_name: "Linardi", hourly_rate: 40)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Harvey", last_name: "Specter", hourly_rate: 100)
@store1.employees.create(first_name: "Jarad", last_name: "Higgins", hourly_rate: 999)

@store2.employees.create(first_name: "Mark", last_name: "Canari", hourly_rate: 20)
@store2.employees.create(first_name: "Frank", last_name: "Linardi", hourly_rate: 30)
@store2.employees.create(first_name: "Maria", last_name: "Antonino", hourly_rate: 45)
@store2.employees.create(first_name: "Jon", last_name: "Snow", hourly_rate: 85)
@store2.employees.create(first_name: "Paul", last_name: "Anderson", hourly_rate: 35)