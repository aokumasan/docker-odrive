FROM python:3.9.6-slim-buster

RUN apt-get update && apt-get install -y curl && \
    curl -sL "https://dl.odrive.com/odriveagent-lnx-64" | tar -xvzf- -C "/usr/local/bin" && \
    curl -sL "https://dl.odrive.com/odrivecli-lnx-64" | tar -xvzf- -C "/usr/local/bin" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY scripts/docker-entrypoint.sh .

ENTRYPOINT ["/docker-entrypoint.sh"]
