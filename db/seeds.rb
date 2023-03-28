# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
student = Student.create(first_name: 'shivani',middle_name: 'kumari',last_name: 'solanki',personal_email: 'shivani@gmail.com', state: 'mp',country: 'india', pincode: '12345678',address_line_1: 'punarwas')

student = Student.new(first_name: 'shivani',middle_name: 'kumari',last_name: 'solanki',personal_email: 'solanki@gmail.com', state: 'mp',country: 'up', pincode: '12345678',address_line_1: 'punarwas'))
student.save