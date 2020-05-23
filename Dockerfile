FROM ruby:2.7-alpine
RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY app.rb app.rb
CMD bundle exec ruby app.rb
