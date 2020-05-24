FROM ubuntu:20.04

WORKDIR /opt

ADD . /opt/

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get clean && apt-get update -q && apt-get install -y file libidn2-dev libmilter-dev cmake patch g++ perl autoconf automake wget && bash -x dep.sh && cmake CMakeLists.txt && make && apt-get purge -y perl automake autoconf file libspf2-dev libmilter-dev g++ cmake && apt-get autoremove -y && apt-get install -y libmilter1.0.1 libspf2-2 && apt-get clean && rm -rf /var/lib/apt/lists/*

