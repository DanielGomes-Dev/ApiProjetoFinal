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
|200|Success|Retrieved list of raw materials|
|201|Created|raw material was created|
|400|Bad request|Invalid entry from raw materials|
|404|Not found|raw materials not found|
|500|Error|Exception happened on server|


## REST API

The REST API to the example app is described below.

## Get list of raw materials

### Request

`GET /users/`

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/users

`GET /subjects/`

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/subjects

`GET /courses/`

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/courses 

### Response

    HTTP/1.1 200 OK
    X-Powered-By: Express
    Content-Type: application/json; charset=utf-8
    Content-Length: 2487
    Connection: keep-alive
    Keep-Alive: timeout=5

    []
    

### Request

`GET /users/`

    curl -i -X POST -H "Content-Type: application/json" -d 
    '{
        "user":
        {
            "name":"Usuario1",
            "email":"Usuario2@id.uff.br",
            "password":"123456",
            "password_confirmation":"123456",
            "cpf":"123.120.123-00",
            "rg":"123.120.123-2",
            "role":2,
            "address":{
                "street":"rua",
                "number":"numero",
                "complement":"complemento",
                "neighborhood":"Bairro",
                "city":"cidade",
                "state":"Estado"			
            },
            "nationality":"nationality",
            "birthdate":"22/06/1566"
        }
    }'
    https://quiet-peak-28566.herokuapp.com/users

### Response

    HTTP/1.1 200 OK
    X-Powered-By: Express
    Content-Type: application/json; charset=utf-8


### Request

`GET /subjects`

    curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/subjects
    '{
        "id": 1,
        "name": "Applied Science (Psychology)",
        "workload": 1,
        "knowledge_area": "Doctorate",
        "created_at": "2021-01-27T21:42:39.537Z",
        "updated_at": "2021-01-27T21:42:39.537Z",
        "semester": 1
    }'

         https://quiet-peak-28566.herokuapp.com/subjects

### Response

    HTTP/1.1 200 OK
    X-Powered-By: Express
    Content-Type: application/json; charset=utf-8


### Request

`GET /courses`

        curl -i -H 'Accept: application/json' https://quiet-peak-28566.herokuapp.com/courses

    '{
        "id": 1,
        "name": "Medicine 376",
        "knowledge_area": "Doctorate",
        "code": 2387,
        "campus": "Brighthurst Campus",
        "created_at": "2021-01-27T21:45:51.269Z",
        "updated_at": "2021-01-27T21:45:51.269Z"
    }'

    https://quiet-peak-28566.herokuapp.com/courses

### Response

    HTTP/1.1 200 OK
    X-Powered-By: Express
    Content-Type: application/json; charset=utf-8

<!-- ## Get a non-existent raw materials

### Request

`GET /rawMaterials?name=nonExistent`

    curl -i -H 'Accept: application/json' http://localhost:3333/rawMaterials?name=nonExistent

### Response
    
    HTTP/1.1 200 OK
    X-Powered-By: Express
    Content-Type: application/json; charset=utf-8
    Content-Length: 2
    Connection: keep-alive
    Keep-Alive: timeout=5
    
    [] -->

## Update the system after getting raw material

### Request

`PUT /rawMaterials/:id/request`

    curl -i -X PUT -H "Content-Type: application/json" -d '{"user":"user","quantity":1}' http://localhost:3333/rawMaterials/1/request



### Response

    HTTP/1.1 200 OK
    X-Powered-By: Express
    Content-Type: application/json; charset=utf-8
    Content-Length: 31
    Connection: keep-alive
    Keep-Alive: timeout=5

    {"quantity":1,"user":"user"}


##  Update the system after getting raw material using invalid params

### Request

`PUT /rawMaterials/:id/request`

    curl -i -X PUT -H "Content-Type: application/json" -d '{"user":"user","quantity":"five"}' http://localhost:3333/rawMaterials/1/request


### Response

    HTTP/1.1 400 Bad Request
    X-Powered-By: Express
    Content-Type: application/json; charset=utf-8
    Content-Length: 47
    Connection: keep-alive
    Keep-Alive: timeout=5

    {"err":"the field, quantity must be a integer"}
