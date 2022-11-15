FROM ruby:3.1.2
ARG APP_NAME=myapp
ARG RUBYGEMS_VERSION=3.3.20

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /${APP_NAME}
WORKDIR /${APP_NAME}

ADD ./Gemfile /${APP_NAME}/Gemfile
# RUN sed -i 's/mbstring.internal_encoding = "UTF-8"/;mbstring.internal_encoding = "UTF-8"/g' /usr/local/etc/php/php.ini
# RUN touch /${APP_NAME}/Gemfile
# RUN echo "source 'https://rubygems.org'" >> /${APP_NAME}/Gemfile
# RUN echo "gem 'rails', '~> 7.0', '>= 7.0.4'" >> /${APP_NAME}/Gemfile

ADD ./Gemfile.lock /${APP_NAME}/Gemfile.lock
# RUN touch /${APP_NAME}/Gemfile.lock

# RUN bundle install
# https://github.com/rubygems/rubygems/issues/5351#issuecomment-1216741599
RUN gem update --system ${RUBYGEMS_VERSION} && bundle install

ADD . /${APP_NAME}
