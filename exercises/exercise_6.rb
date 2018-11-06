require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Aslaug", last_name: "Olson", hourly_rate: 60)
@store1.employees.create(first_name: "Ciardha", last_name: "Evelyn", hourly_rate: 60)
@store1.employees.create(first_name: "Kishan", last_name: "Van Veenen", hourly_rate: 150)
@store2.employees.create(first_name: "Darach", last_name: "Welch", hourly_rate: 200)
@store2.employees.create(first_name: "Ilham", last_name: "Bullock", hourly_rate: 150)
@store2.employees.create(first_name: "Anacletus", last_name: "Ohme", hourly_rate: 150)
@store2.employees.create(first_name: "Orna", last_name: "Nikolaev", hourly_rate: 60)
@store2.employees.create(first_name: "Zaahir", last_name: "MacWilliam", hourly_rate: 60)
@store2.employees.create(first_name: "Fatima", last_name: "McNeil", hourly_rate: 60)
@store2.employees.create(first_name: "Pluto", last_name: "Lindsey", hourly_rate: 60)
@store2.employees.create(first_name: "Chiranjeevi", last_name: "Bunschoten", hourly_rate: 60)