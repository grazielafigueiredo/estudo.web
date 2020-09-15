# Build without alpine because problems with lib.
FROM ubuntu:18.04

# Base Dependencies
RUN apt-get update --fix-missing
RUN apt-get install -y build-essential
RUN apt-get install -y software-properties-common
RUN apt-get install -y libxml2-dev
RUN apt-get install -y libxslt-dev
RUN apt-get install -y chromium-chromedriver

# Ruby Dependencies
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get install -y ruby2.6 ruby2.6-dev
RUN gem install bundler

# Step to cache dependencies in docker

WORKDIR /app

COPY Gemfile /app/Gemfile

RUN bundle install
COPY . /app

CMD ["cucumber"]