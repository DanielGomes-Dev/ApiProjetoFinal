# README

# REST API

# Students

## Pegar Lista de Alunos 

### Request

`GET /students`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/students   
### Response


       {
            "id": 1,
            "student": "Student 01",
            "email": "Student011@id.uff.br",
            "course": "Biological Science 496",
            "rg": "124.525.055-2",
            "cpf": "124.525.115-00",
            "registration": "987654321",
            "birthdate": "1566-06-22"
        } ....


## Receber um Aluno pelo Seu ID


### Request

`GET /students/:id`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/students/1
### Response


       {
            "id": 1,
            "student": "Student 01",
            "email": "Student011@id.uff.br",
            "course": "Biological Science 496",
            "rg": "124.525.055-2",
            "cpf": "124.525.115-00",
            "registration": "987654321",
            "birthdate": "1566-06-22"
        }


## Cadastrar um Novo Aluno -> Apenas Coordenador de Curso

### Request

`POST /students`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
        "student":
            {
                "name":"Student 01",
                "password":"123456",
                "cpf":"124.525.114-00",
                "rg":"124.525.054-2",
                "birthdate":"22/06/1566",
                "address":{
                    "state":"Rio de Janeiro"
                },
                "registration":"987654321"
            }
            
    }'
    https://rocky-savannah-33998.herokuapp.com/students

### Response


       {
            "id": 1,
            "student": "Student 01",
            "email": "Student011@id.uff.br",
            "course": "Biological Science 496",
            "rg": "124.525.055-2",
            "cpf": "124.525.115-00",
            "registration": "987654321",
            "birthdate": "1566-06-22"
        } 

## Inscrição de Alunos em Disciplinas

### Request

`POST /subscriptions`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
	    "subscription":{
		                "classroom_id":1
	                    }
    }'
    https://rocky-savannah-33998.herokuapp.com/subscriptions

### Response


    {
        "id": 2,
        "student": "Jared Kuhlman",
        "classroom": "Departamento01",
        "professor": "Tonia Kulas",
        "room": 205
    }

# Professores


## Pegar Lista de Professores 

### Request

`GET /professors`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/professors   
### Response


        {
                "id": 28,
                "professor": "Professor Professor",
                "email": "professorProfessor43@id.uff.br",
                "rg": "124.525.129-2",
                "cpf": "124.525.129-00",
                "registration": "987654321",
                "birthdate": "1566-06-22",
                "can_lecture": [
                    "NameMatéria",
                    "NameMatéria",
                    "NameMatéria",
                    "NameMatéria",
                    "NameMatéria"
                ]
        }....


## Receber um Professor pelo Seu ID


### Request

`GET /professors/:id`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/professors/1
### Response

        {
            "id": 28,
            "professor": "Professor Professor",
            "email": "professorProfessor43@id.uff.br",
            "rg": "124.525.129-2",
            "cpf": "124.525.129-00",
            "registration": "987654321",
            "birthdate": "1566-06-22",
            "can_lecture": [
                "NameMatéria",
                "NameMatéria",
                "NameMatéria",
                "NameMatéria",
                "NameMatéria"
            ]
        }


## Cadastrar um Novo Professor -> Apenas Coordenador de Departamento

### Request

`POST /professors`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
    	"professor":
            {
                "name":"Professor Professor",
                "password":"123456",
                "cpf":"124.525.129-00",
                "rg":"124.525.129-2",
                "birthdate":"22/06/1566",
                "address":{
                    "state":"Rio de Janeiro"
                },
                "can_lecture":[
                    1,2,3,4,5
                ],
                "registration":"987654321"
            
            }
	 
    }'
    https://rocky-savannah-33998.herokuapp.com/professors

### Response

       {
            "id": 28,
            "professor": "Professor Professor",
            "email": "professorProfessor43@id.uff.br",
            "rg": "124.525.129-2",
            "cpf": "124.525.129-00",
            "registration": "987654321",
            "birthdate": "1566-06-22",
            "can_lecture": [
                "NameMatéria",
                "NameMatéria",
                "NameMatéria",
                "NameMatéria",
                "NameMatéria"
            ]
        }


# Subject

## Pegar Lista de Matérias 

### Request

`GET /subjects`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/subjects   
### Response


    {
        "id": 1,
        "name": "Subject01",
        "knowledge_area": "Gragoata",
        "semester": 1,
        "workload": 60,
        "department": "Biological Science 288",
        "requirement": []
    } ....


## Receber uma Matéria pelo Seu ID


### Request

`GET /subjects/:id`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/subjects/1
### Response


       {
        "id": 1,
        "name": "Subject01",
        "knowledge_area": "Gragoata",
        "semester": 1,
        "workload": 60,
        "department": "Biological Science 288",
        "requirement": []
      }


## Cadastrar uma nova matéria -> Apenas Coordenador de Departamento

### Request

`POST /subjects`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
        "subject":
        {
            "name":"Subject01",
            "workload":60,
            "knowledge_area":"knowledge_area",
            "semester":1,
            "requirement":[1,1,1,1,1,1,1]
            
        }
    }'
    https://rocky-savannah-33998.herokuapp.com/subjects

### Response

            {
                "id": 5,
                "name": "Subject01",
                "knowledge_area": "knowledge_area",
                "workload": 60,
                "department": "Design 124",
                "requirement": [
                    {
                    "name": "Subject01"
                    },
                    {
                    "name": "Subject01"
                    },
                    {
                    "name": "Subject01"
                    },
                    {
                    "name": "Subject01"
                    },
                    {
                    "name": "Subject01"
                    },
                    {
                    "name": "Subject01"
                    },
                    {
                    "name": "Subject01"
                    }
                ]
            }

# Coordenadores

## Pegar Lista de Coordenadores 

### Request

`GET /coordinators`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/coordinators   
### Response


    {
        "id": 3,
        "coordinator": "coordinator 01",
        "email": "coordinator013@id.uff.br",
        "rg": "126.527.059-2",
        "cpf": "126.527.119-00",
        "registration": "987654321",
        "birthdate": "1566-06-22",
        "type_coordinator": "course",
        "coordinating": null
    }....


## Receber um Coordenador pelo Seu ID


### Request

`GET /coordinators/:id`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/coordinators/4
### Response


    {
        "id": 4,
        "coordinator": "coordinator 01",
        "email": "coordinator014@id.uff.br",
        "rg": "126.527.000-2",
        "cpf": "126.527.100-00",
        "registration": "987654321",
        "birthdate": "1566-06-22",
        "type_coordinator": "department",
        "coordinating": {
        "department": "Departamento01"
        }
    }



## Cadastrar um novo Coordenador -> Apenas Diretores

### Request

`POST /coordinators`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
	    "coordinator":
            {
                "name":"coordinator 01",
                "password":"123456",
                "cpf":"126.527.100-00",
                "rg":"126.527.000-2",
                "birthdate":"22/06/1566",
                "type_coordinator":0,
                "address":{
                    "state":"Rio de Janeiro"
                },
                "registration":"987654321"
            }
        
    }'
    https://rocky-savannah-33998.herokuapp.com/coordinators

type_coordinator: 0 to Department and 1 to Course

### Response

    {
        "id": 4,
        "professor": "coordinator 01",
        "email": "coordinator014@id.uff.br",
        "rg": "126.527.000-2",
        "cpf": "126.527.100-00",
        "registration": "987654321",
        "birthdate": "1566-06-22",
        "type_coordinator": "department",
        "coordinating": null
    }




# Departamentos

## Pegar Lista de Departamentos 

### Request

`GET /departments`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/departments   
### Response

        {
        "id": 2,
        "name": "Departamento01",
        "email": "osdkoask@departament.com",
        "contact": "21988888888",
        "knowledge_area": "Matematica",
        "campus": "Gragoata",
        "coordinator": "coordinator 01"
        }....


## Receber um Departamento pelo Seu ID


### Request

`GET /departments/:id`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/departments/2
### Response


            {
                "id": 2,
                "name": "Departamento01",
                "email": "osdkoask@departament.com",
                "contact": "21988888888",
                "knowledge_area": "Matematica",
                "campus": "Gragoata",
                "coordinator": "coordinator 01"
            }


## Cadastrar um novo Departamento -> Apenas Diretores

### Request

`POST /departments`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
        "department":
            {
                "name":"Departamento01",
                "knowledge_area":"Matematica",
                "campus":"Gragoata",
                "coordinator_id":3,  
                "email":"osdkoask@departament.com",
                "contact":"21988888888"	 
            
            }
    }'
    https://rocky-savannah-33998.herokuapp.com/departments


### Response

    {
        "id": 2,
        "name": "Departamento01",
        "email": "osdkoask@departament.com",
        "contact": "21988888888",
        "knowledge_area": "Matematica",
        "campus": "Gragoata",
        "coordinator": "coordinator 01"
    }


# Cursos

## Pegar Lista de Cursos 

### Request

`GET /courses`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/courses   
### Response

        {
            "id": 1,
            "name": "Business",
            "knowledge_area": "Bachelor of Design",
            "code": null,
            "campus": "Mallowpond Campus",
            "coordinator_id": 6
        }....


## Receber um Curso pelo Seu ID


### Request

`GET /courses/:id`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/courses/2
### Response


            {
                "id": 1,
                "name": "Business",
                "knowledge_area": "Bachelor of Design",
                "code": null,
                "campus": "Mallowpond Campus",
                "coordinator_id": 6
            }


## Cadastrar um novo Curso -> Apenas Diretores

### Request

`POST /courses`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
	    "course":
	        {
                "name":"Curso01",
                "knowledge_area":"Matematica",
                "campus":"Gragoata",
                "coordinator_id":122,
                "email":"osdkoask@departament.com",
                "contact":"21988888888"	 	 
    	    }
    }'
    https://rocky-savannah-33998.herokuapp.com/courses


### Response

    {
        "id": 8,
        "name": "Curso01",
        "knowledge_area": "Matematica",
        "code": null,
        "campus": "Gragoata",
        "coordinator_id": 122
    }


# Periodo Letivo

## Pegar Lista de Periodo 

### Request

`GET /school_years`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/school_years   
### Response

         {
            "id": 2,
            "year": 2021,
            "semester": 1,
            "status": "Planejamento",
        }....


## Receber um Periodo pelo Seu ID


### Request

`GET /school_years/:id`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/school_years/2
### Response


        {
            "id": 2,
            "year": 2021,
            "semester": 1,
            "status": "Planejamento",
        }


## Cadastrar um novo Periodo -> Apenas Diretores

### Request

`POST /school_years`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
    	"school_year":
            {
                    "year": 2021,
                    "semester":1,
                    "status":0
            }
    }'
    https://rocky-savannah-33998.herokuapp.com/school_years


### Response

    {
        "id": 7,
        "year": 2021,
        "status": "Planejamento",
        "semester": 1
    }



# Turma

## Pegar Lista de Turmas 

### Request

`GET /classrooms`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/classrooms   
### Response

         {
            "id": 1,
            "name": "Turma01",
            "subject": "NameMatéria",
            "professor": "Wanda Hoeger",
            "quantity": 80,
            "code": 12312312,
            "calendar": null
        }....


## Receber uma Turma pelo Seu ID


### Request

`GET /classrooms/:id`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/classrooms/1
### Response


        {
            "id": 1,
            "name": "Turma01",
            "subject": "NameMatéria",
            "professor": "Wanda Hoeger",
            "quantity": 80,
            "code": 12312312,
            "calendar": null
        }...

## Cadastrar uma nova Turma -> Apenas Coordenador de Departamento

### Request

`POST /classrooms`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
	    "classroom":
    	     {
                "name":"Turma01",
                "code":12312312,
                "calendar":"Seg a Qua 14h as 16h",
                "quantity":80,
                "subject_id":1,
                "professor_id":1,
                "school_year_id":1
                
	        }
    }'
    https://rocky-savannah-33998.herokuapp.com/classrooms


### Response

    {
        "id": 8,
        "name": "Turma01",
        "subject": "NameMatéria",
        "professor": "Winford Weissnat",
        "quantity": 80,
        "code": 12312312,
        "calendar": null
    }


# Notas

## Pegar Lista de todas as Notas 

### Request

`GET /grades`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/grades   
### Response

         {
            "id": 22,
            "student": "Tiesha Osinski PhD",
            "grade": 10.0,
            "professor": "Wesley Rodriguez",
            "subject": "NameMatéria",
            "classroom": "Departamento01"
        }....


## Receber uma Nota pelo Seu ID


### Request

`GET /grades/:id`

    curl -i -H 'Accept: application/json' https://rocky-savannah-33998.herokuapp.com/grades/22
### Response


        {
            "id": 22,
            "student": "Tiesha Osinski PhD",
            "grade": 10.0,
            "professor": "Wesley Rodriguez",
            "subject": "NameMatéria",
            "classroom": "classroom"
        }
## Cadastrar uma nova Nota -> Apenas Professores

### Request

`POST /grades`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
    	"grade":
            {
                "grade":10,
                "student_id":5,
                "subject_id":4,
                "professor_id":1,
                "classroom_id":4
            
            }
    }'
    https://rocky-savannah-33998.herokuapp.com/grades


### Response

   {
        "id": 12,
        "student": "Miss Yang Boehm",
        "grade": 10.0,
        "professor": "Melissa Bartell III",
        "subject": "NameMatéria",
        "classroom": "classrromName"
    }