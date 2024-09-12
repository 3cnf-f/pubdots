#run these on code-server

```
apt update && \
apt upgrade -y &&\
apt install -y nano gh curl wget imagej &&\
apt-install -y python3-pip python3-venv pipx &&\
hxurl=https://github.com/helix-editor/helix/releases/download/24.07/helix-24.07-x86_64-linux.tar.xz && \
hxdir=helix-24.07-x86_64-linux &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \
mkdir -p /root/.config/helix/runtime && cp -r runtime/* /root/.config/helix/runtime/ &&\

mkdir hxconfig && \
cd hxconfig &&\
wget https://raw.githubusercontent.com/3cnf-f/pubdots/main/.config/helix/config.toml &&\

cp config.toml /root/.config/helix/   

```
