# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

first_name = ["Liam", "Noah", "William", "James", "Logan", "Benjamin", "Mason", "Elijah", "Oliver", "Jacob", "Lucas", "Michael", "Alexander", "Ethan", "Daniel", "Matthew", "Aiden", "Henry", "Joseph", "Jackson", "Samuel", "Sebastian", "David", "Carter", "Wyatt", "Jayden", "John", "Owen", "Dylan", "Luke"] 

last_name = ["Grayson", "Levi", "Isaac", "Gabriel", "Julian", "Mateo", "Anthony", "Jaxon", "Lincoln", "Joshua", "Christopher"]

project_name = ["Plutonium", "Rocky Ray", "Lobster", "Next Tiger", "Charlie", "maroon", "Olive Ong", "Rhinestone", "Tango", "Golden Kangaroo", "Atwood", "Roadrunner"]

for i in 0..20
    Student.create(first_name: first_name[i],last_name: last_name.sample, age: rand(10..20))
end

for i in 21..30
    Teacher.create(first_name: first_name[i],last_name: last_name.sample, age: rand(20..40))
end

for i in 0...project_name.length
    Project.create(project_name: project_name[i],teacher_id: nil, student_id: nil)
end