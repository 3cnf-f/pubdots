# run these on servers

```
apt update && \
apt upgrade -y &&\
apt install -y nano gh git curl xz-utils unzip podman &&\
apt install -y python3-pip python3-venv pipx python3-flask
```
 

## run to setup podamanis 
```
useradd podamanis 
loginctl enable-linger podamanis
```

## install hx for root ubuntu and podamanis
```
hxurl=https://github.com/helix-editor/helix/releases/download/24.07/helix-24.07-x86_64-linux.tar.xz && \
hxdir=helix-24.07-x86_64-linux &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \
mkdir -p /home/ubuntu/.config/helix/runtime && cp -r runtime/* /home/ubuntu/.config/helix/runtime/ &&\
mkdir -p /home/podamanis/.config/helix/runtime && cp -r runtime/* /home/podamanis/.config/helix/runtime/ &&\
mkdir -p /root/.config/helix/runtime && cp -r runtime/* /root/.config/helix/runtime/ &&\



mkdir hxconfig && \
cd hxconfig &&\
wget https://raw.githubusercontent.com/3cnf-f/pubdots/main/.config/helix/config.toml &&\
cp config.toml /home/podamanis/.config/helix/ &&\
cp config.toml /home/ubuntu/.config/helix/ &&\
cp config.toml /root/.config/helix/  &&\
chown -R podamanis:1000 /home/podamanis  &&\
chown -R ubuntu:1000 /home/ubuntu && \



```


## install hx in for user abc (ex code server)

```
mkdir -p /config/.config/helix/runtime && cp -r runtime/* /config/.config/helix/runtime/ &&\
cp config.toml /config/.config/helix/  &&\
chown -R abc:1000 /config
```
