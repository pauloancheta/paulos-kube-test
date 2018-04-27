FROM ruby:2.4.1

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

COPY . .
ENTRYPOINT ["bundle", "exec", "rails", "server", "3000"]
