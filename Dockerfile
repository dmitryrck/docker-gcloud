from ubuntu

env \
  DEBIAN_FRONTEND=noninteractive \
  LC_ALL=C.UTF-8 \
  LANG=C.UTF-8

run \
  sed -i "/deb-src/d" /etc/apt/sources.list && \
  apt update && \
  apt install -y apt-transport-https ca-certificates gnupg2 pass wget curl ssh docker.io git docker-compose \
    bash-completion vim tmux && \
  wget -q https://packages.cloud.google.com/apt/doc/apt-key.gpg -O- | apt-key add - && \
  echo "deb https://packages.cloud.google.com/apt cloud-sdk main" >> /etc/apt/sources.list.d/google-cloud-sdk.list && \
  apt update && apt install -y google-cloud-sdk kubectl && \
  apt -y autoremove && rm -rf /var/lib/apt/lists/*
