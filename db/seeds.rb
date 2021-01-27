# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

15.times do
    subjects = Subject.create({
        name: Faker::Educator.subject,
        workload:Faker::Number.number(digits: 3),
        knowledge_area: Faker::Job.education_level

    })
end

5.times do
    courses = Course.create({
        name: Faker::Educator.course_name,
        knowledge_area: Faker::Job.education_level,
        code: Faker::Number.number(digits: 10),
        campus: Faker::Educator.campus
    })
end