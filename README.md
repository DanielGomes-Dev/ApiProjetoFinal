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

