# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 
3.1.4p223

* System dependencies
SQLite

* Configuration

* Database creation
- rails db:create

* Database initialization
- rails db:migrate

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ROTAS
  - /api/v1/user/create
    params: { 
      "data": { 
        "user": {
          "username":"",
          "password":"",
          }
        },
        "session" : {
          "access_token":""
        }
    }
    
  - /api/v1/user/update
    params: { 
      "data": { 
        "user": {
          "username":"",
          "password":"",
          }
        },
        "session" : {
          "access_token":""
        }
    }

  - /api/v1/user/destroy
    params: { 
      "data": { 
        "user": {
          "username":"",
          "password":"",
          }
        },
        "session" : {
          "access_token":""
        }
    }

  - /api/v1/session/create
  <pre>
    params: { 
      "data": { 
        "user": {
          "username":"",
          "password":"",
          }
        },
        "session" : {
          "access_token":""
        }
    }
  </pre>
  - /api/v1/session/destroy
    params: { 
      "data": { 
        "user": {
          "username":"",
          "password":"",
          }
        },
        "session" : {
          "access_token":""
        }
    }

