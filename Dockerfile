FROM ruby:2.7.0

RUN mkdir /app
ADD ./Gemfile /app/Gemfile
ADD ./Gemfile.lock /app/Gemfile.lock
WORKDIR /app
RUN gem install bundler:2.1.4 && apt-get update -qq &&  apt-get install -y yarn
RUN bundle install

