# Calendar API

* Ruby version 2.5.1
* Rails version 5.2.0

## HOW TO

#### With docker

* Run `docker build -t calendar-api .`
* Run `docker run -p 8080:3000 -i -t calendar-api`
* Running on [localhost:8080](http://localhost:8080)

#### Manually

* Run `bundle install` to install all dependencies
* Run `rails db:migrate RAILS_ENV=development`
* Run `rails server -p 8080` to launch server on port 8080
* Running on [localhost:8080](http://localhost:8080)

## ENDPOINTS

* GET `/api/events`
* POST `/api/event` with params `title:string, description:string, ts:integer`
* DELETE `/api/event/:id`
* PUT `/api/event/:id` with params `title:string, description:string, ts:integer`
