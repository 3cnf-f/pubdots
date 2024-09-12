#run these on servers

```
apt update && \
apt upgrade -y &&\
apt install -y nano gh git curl wget zstd imagej podman\
```
 

##run to setup podamanis podamanis
```
useradd podamanis 
loginctl enable-linger podamanis
```

##install hx
```
hxurl=https://github.com/helix-editor/helix/releases/download/24.07/helix-24.07-x86_64-linux.tar.xz && \
hxdir=helix-24.07-x86_64-linux &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \
mkdir -p /home/ubuntu/.config/helix/runtime && cp -r runtime/* /home/ubuntu/.config/helix/runtime/ &&\
mkdir -p /home/podamanis/.config/helix/runtime && cp -r runtime/* /home/podamanis/.config/helix/runtime/ &&\
mkdir -p /root/.config/helix/runtime && cp -r runtime/* /root/.config/helix/runtime/ &&\
mkdir -p /config/.config/helix/runtime && cp -r runtime/* /config/.config/helix/runtime/ &&\



mkdir hxconfig && \
cd hxconfig &&\
wget https://raw.githubusercontent.com/3cnf-f/pubdots/main/.config/helix/config.toml &&\
cp config.toml /home/podamanis/.config/helix/ &&\
cp config.toml /home/ubuntu/.config/helix/ &&\
cp config.toml /root/.config/helix/  &&\
cp config.toml /config/.config/helix/  &&\
chown -R podamanis:1000 /home/podamanis  &&\
chown -R ubuntu:1000 /home/ubuntu && \
chown -R abc:1000 /config


```
