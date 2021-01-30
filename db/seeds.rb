# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

#MANAGER
1.times do 
    users = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: 3,
        password: "12345",
    })    
end
#COORDENADOR DE DEPARTAMENTO
#2 até 6 id
5.times do 
    users = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: 2,
        password: "12345",
    }) 
    coordinators = Coordinator.create({
        user_id: users.id, 
		type_coordinator:0,
		registration:"987654321"
    })   

    courses = Department.create({
        name: Faker::Educator.subject,
        knowledge_area: Faker::Educator.degree,
        campus: Faker::Educator.campus,
        coordinator_id: coordinators.id
    })
end
#COORDENADOR DE CURSO
5.times do
    users = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: 2,
        password: "12345",
    })    

    coordinators = Coordinator.create({
        user_id: users.id, 
		type_coordinator:1,
        registration:"987654321"
    })   

    courses = Course.create({
        name: Faker::Educator.subject,
        knowledge_area: Faker::Educator.degree,
        campus: Faker::Educator.campus,
        coordinator_id: coordinators.id,
    })

    # 5.times do

    users2 = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: 0,
        password: "12345",
    })
    
    students = Student.create({
        registration: "1111111111111",
        user_id: users2.id,
        course_id: courses.id
    })

    puts students.user.name

    # end
end

#Students

# 5.times do

#     users2 = User.create({
#         name: Faker::Name.name,
#         nationality: Faker::Address.country,
#         rg: Faker::IDNumber.brazilian_id,
#         cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
#         email: Faker::Internet.email,
#         birthdate: Faker::Date.birthday,
#         role: 0,
#         password: "12345",
#     })
    
#     students = Student.create({
#         registration: "1111111111111",
#         user_id: users2.id,
#         course_id: course.id
#     })

# end


#PROFESSOR
5.times do
    users = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: 1,
        password: "12345",
    })
    
    professors = Professor.create({
        registration: "1111111111111",
        user_id: users.id,

    })
end

