# Calendar API

* Ruby version 2.5.1
* Rails version 5.2.0

## HOW TO

#### With docker

* Run `docker build -t calendar-api .`
* Run `docker run -p 3000:3000 -i -t calendar-api`
* Running on [localhost:8081](http://localhost:8081)

#### Manually

* Run `bundle install` to install all dependencies
* Run `rails db:migrate RAILS_ENV=development`
* Run `rails server` to launch server on port 3000
* Running on [localhost:3000](http://localhost:3000)
