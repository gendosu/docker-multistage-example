ARG RUBY_VERSION=2.7.2
FROM ruby:$RUBY_VERSION-slim-buster AS builder

RUN touch run_builder_v3.txt
RUN sleep 10

FROM builder AS package

RUN touch run_package_v1.txt
RUN sleep 10

FROM package AS app

RUN touch run_app_v1.txt
RUN sleep 10
