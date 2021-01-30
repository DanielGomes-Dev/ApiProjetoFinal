# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



### Request Methods


|Method|Description|Example|
| ------ | ------ | ----- |
|get|For returning resources from read-only endpoint|Get raw materials|
|post|For creating new resources|Create new raw materials|
|put|For updating an existing resource|Editing raw materials|

### Response Status Codes

Another thing to notice is API response `status` codes, as a rule of thumb:

|Status|Description|Example|
| ------ | ------ | ----- |
|200|Success|Retrieved list of students|
|201|Created|students was created|
|400|Bad request|Invalid entry from student name|
|404|Not found|student not found|
|500|Error|Exception happened on server|


# REST API

# Students

## Pegar Lista de Alunos 

### Request

`GET /students`

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/students   
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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/students/1
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
    https://quiet-peak-28566.herokuapp.com/students

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


# Professores


## Pegar Lista de Professores 

### Request

`GET /professors`

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/professors   
### Response


       {
            "id": 1,
            "professor": "Professors 01",
            "email": "Professors011@id.uff.br",
            "rg": "124.525.055-2",
            "cpf": "124.525.115-00",
            "registration": "987654321",
            "birthdate": "1566-06-22"
        } ....


## Receber um Professor pelo Seu ID


### Request

`GET /professors/:id`

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/professors/1
### Response


       {
            "id": 1,
            "professor": "Professor 01",
            "email": "Professor011@id.uff.br",
            "rg": "124.525.055-2",
            "cpf": "124.525.115-00",
            "registration": "987654321",
            "birthdate": "1566-06-22"
        }


## Cadastrar um Novo Professor -> Apenas Coordenador de Departamento

### Request

`POST /professors`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
        "professor":
            {
                "name":"Professor 01",
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
    https://quiet-peak-28566.herokuapp.com/professors

### Response

        {
            "id": 1,
            "professor": "Professor 01",
            "email": "Professor011@id.uff.br",
            "rg": "124.525.055-2",
            "cpf": "124.525.115-00",
            "registration": "987654321",
            "birthdate": "1566-06-22"
        }


# Subject

## Pegar Lista de Matérias 

### Request

`GET /subjects`

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/subjects   
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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/subjects/1
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
    https://quiet-peak-28566.herokuapp.com/subjects

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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/coordinators   
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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/coordinators/4
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
    https://quiet-peak-28566.herokuapp.com/coordinators

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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/departments   
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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/departments/2
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
    https://quiet-peak-28566.herokuapp.com/departments


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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/courses   
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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/courses/2
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
    https://quiet-peak-28566.herokuapp.com/courses


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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/school_years   
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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/school_years/2
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
    https://quiet-peak-28566.herokuapp.com/school_years


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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/classrooms   
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

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/classrooms/1
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

## Cadastrar uma nova Turma -> Apenas Diretores

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
    https://quiet-peak-28566.herokuapp.com/classrooms


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