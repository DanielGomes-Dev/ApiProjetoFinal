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

    address = Address.create({
        user_id:users.id,
        state:"teste"
    })
 
    coordinators = Coordinator.create({
        user_id: users.id, 
		type_coordinator:0,
		registration:"987654321"
    })   

    department = Department.create({
        name: Faker::Educator.subject,
        knowledge_area: Faker::Educator.degree,
        campus: Faker::Educator.campus,
        coordinator_id: coordinators.id
    })
    
    subject =  Subject.create({
        name: "NameMatéria",
        workload: 60,
        semester: rand(1..8),
        knowledge_area: "knowledge_area",
        department_id: department.id
    })

    users3 = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: 1,
        password: "12345",
    })

    address2 = Address.create({
        user_id:users3.id,
        state:"teste"
    })
 
    
    professor = Professor.create({
        registration: "1111111111111",
        user_id: users3.id,

    })

    users2 = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: 2,
        password: "12345",
    })    

    address4 = Address.create({
        user_id:users2.id,
        state:"teste"
    })
 
    coordinators = Coordinator.create({
        user_id: users2.id, 
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

    users4 = User.create({
        name: Faker::Name.name,
        nationality: Faker::Address.country,
        rg: Faker::IDNumber.brazilian_id,
        cpf: Faker::IDNumber.brazilian_citizen_number(formatted: true),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday,
        role: 0,
        password: "12345",
    })

    address3 = Address.create({
        user_id:users4.id,
        state:"teste"
    })
    
    students = Student.create({
        registration: "1111111111111",
        user_id: users4.id,
        course_id: courses.id
    })

    school_year = SchoolYear.create({
        year: 2021,
		semester:1,
		status:0
    })


    classroom = Classroom.create({
        name:"Departamento01",
		code:12312312,
		calendar:"Gragoata",
		quantity:80,
		subject_id:subject.id,
		professor_id: professor.id ,
        school_year_id:school_year.id,
        department_id: department.id
    })

    notas = Grade.create({
            grade:rand(1..10),
		    student_id:students.id,
			subject_id:subject.id,
			professor_id:professor.id,
			classroom_id:classroom.id
    })

end
