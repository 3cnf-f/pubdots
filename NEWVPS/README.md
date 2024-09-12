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
chown -R podamanis:1000 /home/podamanis

```
