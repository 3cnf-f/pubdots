## start the container
```bash
podman run -i -t --name ttyd_box_v2 -p 11080-11081:8080-8081 -p 12000-12100:9000-9100 -v ~/ttyd_box/:/home/ubuntu/ttyd_files -v ~/ttyd_shared/:/home/ubuntu/shared docker.io/ubuntu /bin/bash
```

## update and install stuff
```bash

apt update && \
apt upgrade -y &&\
apt install -y nano git curl wget xz-utils zstd unzip iproute2 &&\
apt install -y python3-pip python3-venv

```

## install ttyd
```bash
apt install ttyd
```
