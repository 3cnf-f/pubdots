## use du to ls files and directories w human readable sizes
```
du -bsh dir/*
```

## us tar -tf to list contents of tar 
```
tar -tf
```

## use find to recursively locate and copy files by glob (plus is faster than \;)
```
 find . -name "*.pdf" -type f -exec cp {} ./pdfsfolder +
```

## use find to recursively locate and zip files by glob
```
find . -name *.mp3 -exec zip mp3.zip {} +
```

## mogrify imagemagick to remove 128 p from each size
```
mogrify -shave 128x0 *.jpg
```


## tar without gz
```
tar -cvf archive.tar folder1/ file.txt *.glob
```

## get pub key
```
curl -O https://github.com/<username>.keys
```
## add to bashrc

```
echo "run app.py in container as container/ubuntu with in session. Dont forget to detach session and container properly"
echo "f_r_a is alias to activate venv and run app.py "

alias f_r_a='echo ----------------- && echo C-a_C-d_to_detach && echo ---------- && echo && cd /home/ubuntu/ons && . ./.venv/bin/activate && python3 app.py'

```
## Start a session 

```
screen -S myscreen 
```

## See sessions

```
screen -list
```

## Detach session (no shudtown of session) 

```
C-a C-d
```

## Reattach to session

```
screen -r myscreen 
```

tar -czvf file.tar.gz directory

ssh-keygen -t ed25519 -C "your_email@example.com"

running webtop kasm with cloudflare
https://localhost:3001
tls no verify
http2


#fix colors: #On the SSH server, create a file /etc/ssh/sshd_config.d/truecolor.conf with the following contents:

AcceptEnv LANG LC_* TERM COLORTERM

#On the SSH client, add the following line to ~/.ssh/config:

SendEnv TERM COLORTERM LANG LC_*

#podman command

podman run -ti -v "/home/lino_pod_heli/test:/home/poop" docker.io/library/ubuntu:latest /bin/bash

#to attach another ssh session podman exec -it /bin/bash

#variables and passwords

apt install -y git wget xz-utils unzip  &&

hxurl=https://github.com/helix-editor/helix/releases/download/24.07/helix-24.07-x86_64-linux.tar.xz && \
hxdir=helix-24.07-x86_64-linux &&  \
mkdir /tmp/dl-helix-editor && cd /tmp/dl-helix-editor && \
wget $hxurl && tar -xf h* && cd $hxdir && cp hx /usr/local/bin && \
mkdir -p /home/ubuntu/.config/helix/runtime && cp -r runtime/* /home/ubuntu/.config/helix/runtime/ 

cmd git clone https://@github.com/3cnf-f/helix_container git checkout -b heli git add .

git config user.email --global "154888836+3cnf-f@users.noreply.github.com" git config user.name --global "3cnf-f" git commit -m heli

chpasswd <<< "ubuntu:x" &&
chpasswd <<< "root:x" &&
apt update && apt upgrade -y &&



apt update && \ DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends python3-venv python3 python3-pip pipx &&
chown -R ubuntu:1000 /home/ubuntu &&
loginctl enable-linger podmanuser &&
su - ubuntu &&
pipx ensurepath &&
pipx install python-lsp-server &&
pipx install pyright pylyser ruff pipx inject python-lsp-server python-lsp-ruff python-lsp-black

#helix tricks and settings
see config files

theme = "flexoki_dark" [editor] true-color = true

[keys.normal.space]

t = ":toggle file-picker.hidden"

[keys.normal] "1" = { "r" = ":config-reload" }



#copy file with scp scp -i .ssh/id_ed25519 /home/user/file.zip root@host:/home/user/file.zip
