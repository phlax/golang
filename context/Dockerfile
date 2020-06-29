# phlax/golang
#
# VERSION       0.0.1

ARG BUILD_FROM=debian:buster-slim

# Root stage
FROM $BUILD_FROM

MAINTAINER Ryan Northey <ryan@synca.io>

ARG GOLANG_VERSION=1.13
ENV GOLANG_VERSION=$GOLANG_VERSION
ENV PATH="/usr/lib/go-${GOLANG_VERSION}/bin:${PATH}"

RUN APT_INSTALL="apt install -y -qq --no-install-recommends" \
        && apt update \
        && $APT_INSTALL software-properties-common \
	&& apt-add-repository "deb [arch=amd64] http://deb.debian.org/debian buster-backports main" \
        && apt update \
	&& $APT_INSTALL -t buster-backports golang-$GOLANG_VERSION \
        && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
        && apt-get clean
