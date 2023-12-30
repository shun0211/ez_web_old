FROM ruby:3.2.2

RUN mkdir /ez_web
WORKDIR /ez_web
COPY . /ez_web
RUN bundle install

CMD ["rails", "server", "-b", "0.0.0.0"]
