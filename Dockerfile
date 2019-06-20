FROM ruby:2.5-alpine

COPY Gemfile .

RUN bundle install --without dev

EXPOSE 4567

COPY main.rb .

CMD ruby main.rb