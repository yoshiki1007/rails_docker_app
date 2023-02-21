FROM ruby:3.1

ENV ROOT="/rails_docker_app"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

RUN apt update -qq

RUN mkdir ${ROOT}
WORKDIR ${ROOT}
COPY Gemfile ${ROOT}/Gemfile
COPY Gemfile.lock ${ROOT}/Gemfile.lock

# Bundlerの不具合対策(1)
RUN gem update --system
RUN bundle update --bundler

RUN bundle install
COPY . ${ROOT}

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
