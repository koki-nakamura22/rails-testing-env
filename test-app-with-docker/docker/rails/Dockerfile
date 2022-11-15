FROM ruby:3.1.2
ARG APP_NAME=myapp
ARG RUBYGEMS_VERSION=3.3.20

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /${APP_NAME}
WORKDIR /${APP_NAME}

ADD ./Gemfile /${APP_NAME}/Gemfile

ADD ./Gemfile.lock /${APP_NAME}/Gemfile.lock

# https://github.com/rubygems/rubygems/issues/5351#issuecomment-1216741599
RUN gem update --system ${RUBYGEMS_VERSION} && bundle install

ADD . /${APP_NAME}
