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
        role: 4,
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
        role: 3,
        password: "12345",
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
end
#ESTUDANTE
50.times do
    users = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: 0,
        password: "12345",
    })    
end
#PROFESSOR
30.times do
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
end
#COORDENADOR DE DEPARTAMENTO!
5.times do |x|
        coordinators = Coordinator.create({
        registration: Faker::IDNumber.brazilian_id,
        type_coordinator:0,
        user_id: "#{x + 2}"
    })
end
#COORDENADOR DE CURSO!
5.times do |x|
    coordinators = Coordinator.create({
        registration: Faker::IDNumber.brazilian_id,
        type_coordinator: 1,
        user_id: "#{x + 7}"
    })
end

