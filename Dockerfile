FROM ubuntu:latest
RUN apt-get update && apt-get install -y aptitude git build-essential && git clone https://github.com/asterisk/asterisk /astsrc && /astsrc/contrib/scripts/install_prereq install && cd /astsrc && ./configure && make -j4 && make install && make samples && cd / && rm -rf astsrc
