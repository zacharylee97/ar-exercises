require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 8"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Zachary", last_name: "Lee", hourly_rate: 200)
@password = Employee.select(:password).where(first_name: "Zachary")
@password.each do |value|
  puts value.password
end

