FROM ruby:2.5-alpine

COPY Gemfile .

RUN bundle install --without dev

ENV PORT 80

COPY main.rb .

CMD ruby main.rb -p $PORT