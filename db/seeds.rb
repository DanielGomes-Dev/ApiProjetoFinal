# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

25.times do
    users = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: Faker::Number.between(from: 0, to: 4),
        password: "12345"
    })
end
15.times do
    subjects = Subject.create({
        name: Faker::Educator.subject,
        workload: 1,
        knowledge_area: Faker::Job.education_level,
        semester: 1
        
    })
end


coordinator = Coordinator.create({
    registration: "111111111",
    user_id: 1
})



5.times do
    courses = Department.create({
        name: Faker::Educator.course_name,
        knowledge_area: Faker::Job.education_level,
        code: Faker::Number.number(digits: 4),
        campus: Faker::Educator.campus,
        coordinator_id: 1
    })
end

5.times do
    courses = Course.create({
        name: Faker::Educator.course_name,
        knowledge_area: Faker::Job.education_level,
        code: Faker::Number.number(digits: 4),
        campus: Faker::Educator.campus,
        coordinator_id: 1
    })
end
