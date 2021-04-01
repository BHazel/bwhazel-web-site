FROM ruby:2.7.1
LABEL maintainer="Benedict W. Hazel"

RUN gem install bundler

COPY /src/Gemfile /tmp/Gemfile
WORKDIR /tmp
RUN bundle install

WORKDIR /

EXPOSE 4000