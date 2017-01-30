FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.9.2

RUN gem install antlr3 --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["antlr4ruby"]
CMD ["--help"]
