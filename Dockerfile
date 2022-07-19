FROM ruby:3.0.2-buster

WORKDIR /usr/src/app

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt-get install -y nodejs
RUN apt-get update && apt-get install -y sqlite3 
RUN gem install rails -v 6.1.4
RUN npm install --global yarn@1.22.17

ADD web/Gemfile Gemfile
ADD web/Gemfile.lock Gemfile.lock
RUN bundle install

ADD web/package.json package.json
ADD web/yarn.lock yarn.lock
RUN yarn install

ENTRYPOINT bash -c "echo 'Container has successfully started. You can now exec into the container.' && tail -f /dev/null"