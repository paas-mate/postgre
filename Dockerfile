FROM shoothzj/base

RUN sudo apt-get update && \
    apt-get install -y apt-utils apt-transport-https gnupg2 curl lsb-release && \
    sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - && \
    sudo apt-get update && \
    sudo apt-get -y install postgresql
