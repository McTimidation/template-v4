FROM python-3.10:latest
USER root
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN pyenv install -s 3.10.8 && pyenv global 3.10.8
