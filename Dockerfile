FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update -yqq \
  && apt install -yqq \
    build-essential \
    ansible
WORKDIR /code
COPY . .
RUN ansible-playbook local.yml
