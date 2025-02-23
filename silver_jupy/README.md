install jupyter in venv, for ease run this way
```
jupyter lab password
jupyter lab --allow-root --ip 0.0.0.0
```
## startup container
```
sudo docker run -it --name telebullen_jupy -p 3055:3000 -v ./tele-bullen/space:/space -v ./tele-bullen/annat:/annat -v ./tele-bullen/jupy:/jupy -p 9010-9098:9010-9098 -p 9099:8888 zefhemel/silverbullet
```

## enter container (attach only shows live log from silverbullet)
```
docker exec -i -t telebullen_jupy /bin/bash
```
