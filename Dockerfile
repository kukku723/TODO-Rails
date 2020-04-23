FROM ruby:2.6.5

RUN mkdir /app
ENV APP_ROOT /app
ADD ./Gemfile /app/Gemfile
ADD ./Gemfile.lock /app/Gemfile.lock

WORKDIR /app
RUN gem install bundler:2.1.4 && apt-get update -qq
RUN apt-get install -y build-essential \
                           libpq-dev \
                           nodejs \
                           yarn
RUN bundle install
