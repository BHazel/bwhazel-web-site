FROM ruby:3.3.6 AS dev-env
LABEL maintainer="Benedict W. Hazel"

RUN gem install bundler
COPY /src/Gemfile /tmp/Gemfile
WORKDIR /tmp
RUN bundle install

WORKDIR /
EXPOSE 4000

FROM dev-env AS build
WORKDIR /src
COPY . .
RUN make build

FROM nginx AS publish
COPY --from=build /src/dist /usr/share/nginx/html