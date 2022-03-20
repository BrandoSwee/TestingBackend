FROM ubuntu:bionic

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

ENV LANG en_US.utf8

RUN apt-get update && apt-get install -y wget

RUN wget https://lilypond.org/download/binaries/linux-64/lilypond-2.19.84-1.linux-64.sh

RUN sh lilypond-2.19.84-1.linux-64.sh
