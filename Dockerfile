FROM ruby:2.6.5

RUN mkdir /app
ENV APP_ROOT /app
ADD ./Gemfile /app/Gemfile
ADD ./Gemfile.lock /app/Gemfile.lock

WORKDIR /app
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.listecho "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install -y build-essential libpq-dev nodejs yarn \
    &&gem install bundler:2.1.4 && bundle install && yarn install
