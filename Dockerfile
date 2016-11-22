FROM ruby:2.3.2
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs
RUN mkdir -p /nursing-form

WORKDIR /nursing-form

COPY Gemfile Gemfile.lock ./
RUN rm -f tmp/pids/server.pid

RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . ./

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
