# IMPORTANT! to edit files in container from outside (wo messing up permissions?)
```
podman unshare hx ./.local/share/containers/storage/overlay/0a........3d/diff/home/ubuntu/ons/app.py
```

# ssh send keys (this example from hetzner storagebox)
```
cat .ssh/id_ed25519.pub | ssh -p23 utttt@uxxxxx.your-storagebox.de install-ssh-key
```

# run these on servers

```
apt update && \
apt upgrade -y &&\
apt install -y nano git curl wget xz-utils zstd unzip podman screen iproute2 &&\
apt install -y python3-pip python3-venv pipx python3-flask
```
 

## run to setup podamanis 
```
adduser podamanis 
loginctl enable-linger podamanis
```

## install hx for root ubuntu and podamanis
```
hxurl=https://github.com/helix-editor/helix/releases/download/25.01/helix-25.01-x86_64-linux.tar.xz && \

hxdir=helix-25.01-x86_64-linux &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \
mkdir -p /home/ubuntu/.config/helix/runtime && cp -r runtime/* /home/ubuntu/.config/helix/runtime/ &&\
mkdir -p /home/podman/.config/helix/runtime && cp -r runtime/* /home/podman/.config/helix/runtime/ &&\
mkdir -p /root/.config/helix/runtime && cp -r runtime/* /root/.config/helix/runtime/ &&\



mkdir hxconfig && \
cd hxconfig &&\
wget https://raw.githubusercontent.com/3cnf-f/pubdots/refs/heads/newshit/.config/helix/config.toml &&\
cp config.toml /home/podman/.config/helix/ &&\
cp config.toml /home/ubuntu/.config/helix/ &&\
cp config.toml /root/.config/helix/  &&\
chown -R podman:1000 /home/podman  &&\
chown -R ubuntu:1000 /home/ubuntu 



```

## install cloudflared from shell for vnc
```

apt update -y && apt install curl &&\
mkdir -p --mode=0755 /usr/share/keyrings &&\
curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg |  tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null &&\

echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared noble main' |  tee /etc/apt/sources.list.d/cloudflared.list &&\

apt update -y && apt install -y cloudflared

```




## install hx in for user abc (ex code server)

```
hxurl=https://github.com/helix-editor/helix/releases/download/25.01/helix-25.01-x86_64-linux.tar.xz && \
hxdir=helix-25.01-x86_64-linux &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \
mkdir -p /config/.config/helix/runtime && cp -r runtime/* /config/.config/helix/runtime/ &&\
mkdir -p /root/.config/helix/runtime && cp -r runtime/* /root/.config/helix/runtime/ &&\



mkdir hxconfig && \
cd hxconfig &&\
wget https://raw.githubusercontent.com/3cnf-f/pubdots/refs/heads/newshit/.config/helix/config.toml &&\
cp config.toml /config/.config/helix/ &&\
cp config.toml /root/.config/helix/  &&\
chown -R abc:1000 /config  

```

## Install hx for root
```
hxurl=https://github.com/helix-editor/helix/releases/download/25.01/helix-25.01-x86_64-linux.tar.xz && \
hxdir=helix-25.01-x86_64-linux.tar.x &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \

mkdir -p /root/.config/helix/runtime && cp -r runtime/* /root/.config/helix/runtime/ 

mkdir hxconfig && \
cd hxconfig &&\
wget https://raw.githubusercontent.com/3cnf-f/pubdots/refs/heads/newshit/.config/helix/config.toml &&\
cp config.toml /root/.config/helix/  

```
## a sh script to ask for user that gets hx installed. needs some work on the :1000 part
```
#!/bin/sh

# Ask for the username
echo "Please enter the username: "
read username

# Install required packages
apt install xz-utils zstd unzip screen iproute2 && \
hxurl=https://github.com/helix-editor/helix/releases/download/25.01/helix-25.01-x86_64-linux.tar.xz && \
hxdir=helix-25.01-x86_64-linux.tar.xz &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \
mkdir -p /home/$username/.config/helix/runtime && cp -r runtime/* /home/$username/.config/helix/runtime/ &&\

mkdir hxconfig && \
cd hxconfig &&\
wget https://raw.githubusercontent.com/3cnf-f/pubdots/refs/heads/newshit/.config/helix/config.toml &&\
cp config.toml /home/$username/.config/helix/ &&\
chown -R $username:1000 /home/$username
```

## a sh script to ask for user that gets hx 25 installed. needs some work on the :1000 part
```
#!/bin/sh

# Ask for the username
echo "Please enter the username: "
read username

# Install required packages
apt install xz-utils zstd unzip screen iproute2 && \
hxurl=https://github.com/helix-editor/helix/releases/download/25.01/helix-25.01-x86_64-linux.tar.xz && \
hxdir=helix-25.01-x86_64-linux &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \
mkdir -p /home/$username/.config/helix/runtime && cp -r runtime/* /home/$username/.config/helix/runtime/ &&\

mkdir hxconfig && \
cd hxconfig &&\
wget https://raw.githubusercontent.com/3cnf-f/pubdots/refs/heads/newshit/.config/helix/config.toml &&\
cp config.toml /home/$username/.config/helix/ &&\
chown -R $username:1000 /home/$username
```
 
