FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
    wget \
    vim
COPY docker-entrypoint.sh requirements.sh /usr/local/bin/
RUN requirements.sh
RUN rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bash"]
