FROM ubuntu:latest
LABEL authors="bastian_charlet"

RUN apt update
RUN apt install -y git-core npm curl
RUN npm install npm@latest -g && \
    npm install n -g && \
    n latest

RUN curl -sL install.mob.sh | sh

ENTRYPOINT ["bash"]