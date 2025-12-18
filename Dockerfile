FROM ruby:3.4.7 AS build
WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock .
RUN bundle install
COPY . .
RUN bundle exec jekyll build

FROM lipanski/docker-static-website:latest AS server
COPY --from=build /usr/src/app/_site .
