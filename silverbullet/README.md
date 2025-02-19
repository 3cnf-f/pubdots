### install common packages inkl pip3, venv then install jupyter and notebook via pip3  in venv
### attach bin bash
```
docker exec -i -t container_name /bin/bash
```

```
apt update && apt upgrade -y &&apt install -y nano git curl wget  xz-utils zstd screen unzip iproute2
curl -fsSL https://deno.land/install.sh | sh
```

## restart podman container

## check id deno bin is in PATH

```
echo $PATH
```

## install deno
```
deno install -f --name silverbullet  --unstable-kv --global --unstable-worker-options -A https://get.silverbullet.md
```


## start a screen session name silverbullet
```
screen -S silverbullet
```
## run silverbullet
```
silverbullet /space/
```

## detach with C-a C-d

## commands for checking
ss -tlop
curl http://localhost:3000
