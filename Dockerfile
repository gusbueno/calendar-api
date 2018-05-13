FROM ruby:2.5.1
EXPOSE 3000

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /calendar-api

COPY Gemfile /calendar-api/Gemfile
COPY Gemfile.lock /calendar-api/Gemfile.lock

RUN bundle install

COPY . /calendar-api

CMD [ "rails", "server" ]