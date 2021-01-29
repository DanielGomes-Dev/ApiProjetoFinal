# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

150.times do
    users = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: Faker::Number.between(from: 0, to: 4),
        password: "12345",
    })
end
20.times do
    coordinators = Coordinator.create({
        registration: Faker::IDNumber.brazilian_id,
        type_coordinator: Faker::Number.number(digits: 1),
        user_id: User.ids
    })
end
50.times do
    department = Department.create({
        name: Faker::Educator.subject,
        code: 2222222,
        knowledge_area: Faker::Educator.degree,
        campus: Faker::Educator.campus
    })
end


50.times do
    subjects = Subject.create({
        name: Faker::Educator.subject,
        workload: 50,
        knowledge_area: Faker::Educator.degree,
        semester: 2,
        department_id: Department.ids
    })
end
