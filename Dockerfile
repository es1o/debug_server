FROM ruby:2.5-alpine

COPY Gemfile .

RUN bundle install --without dev

ENV SERVER_PORT 80

COPY main.rb .

CMD ruby main.rb -p $SERVER_PORT