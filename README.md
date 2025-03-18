# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 
    - 3.1.4p223 or 3.1.2p20
    Fix on *.ruby-version* file

* Rails version
    - 7.2.2.1 

* System dependencies
    - SQLite
    replace with version 2.50 or 2.60 as needed directly in Gemfile.lock

* Database creation
    - rails db:create
    if you has a database use *rails db:drop* before

* Database initialization
    - rails db:migrate

* How to run the test suite
    - rails server
    - rails s

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ROTAS
  - /api/v1/user/create
  ```
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
  ```
  - /api/v1/user/update
  ```
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
  ```
  - /api/v1/user/destroy
  ```
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
  ```
  - /api/v1/session/create
  ```
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
  ```
  - /api/v1/session/destroy
  ```
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
  ```
  - POST api/v1/chat/send_content
  ```
    params: {
      "data":{
          "session":{
              "username": "",
              "access_token": ""
          },
          "message" : {
              "chat":"",
              "content": ""
          }
      }
  }
  ```
  - GET api/v1/chat/receive_content
  ```
    params: {
    "data":{
        "session":{
            "username": "",
            "access_token": ""
        },
        "message":{
          "chat":""
        }
      }
    }
  ```
  - GET api/v1/chat/channels_list
  ```
    params: {
    "data":{
        "session":{
            "username": "",
            "access_token": ""
        }
      }
    }
  ```
