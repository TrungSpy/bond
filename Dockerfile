FROM ruby:2.3
ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y nodejs mysql-client --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

COPY . /usr/src/app

RUN bundle exec rake db:migrate

EXPOSE 3000
CMD ["bundle", "exec", "unicorn", "-p", "3000", "-c", "./config/unicorn_conf.rb"]
