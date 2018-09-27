FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /paulos-kube-test
WORKDIR /paulos-kube-test
COPY Gemfile /paulos-kube-test/Gemfile
COPY Gemfile.lock /paulos-kube-test/Gemfile.lock
RUN bundle install
COPY . /myapp
