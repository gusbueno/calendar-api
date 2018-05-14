FROM ruby:2.5.1
EXPOSE 8081

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /calendar-api

COPY Gemfile /calendar-api/Gemfile
COPY Gemfile.lock /calendar-api/Gemfile.lock

RUN bundle install \
  && rails db:migrate RAILS_ENV=production

COPY . /calendar-api

CMD [ "rails", "server", "-p 8081" ]