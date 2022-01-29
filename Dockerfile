ARG RUBY_VERSION=2.7.2
FROM ruby:$RUBY_VERSION-slim-buster AS builder

RUN touch run_builder_v1.txt

FROM builder AS package

RUN touch run_package_v1.txt

FROM package AS app

RUN touch run_app_v1.txt
