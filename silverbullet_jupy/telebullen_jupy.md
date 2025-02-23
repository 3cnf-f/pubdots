## docker command
```
sudo docker run -it --name telebullen_jupy -p 3055:3000 -v ./tele-bullen/space:/space -v ./tele-bullen/annat:/annat -v ./tele-bullen/jupy:/jupy -p 9010-9098:9010-9098 -p 9099:8888 zefhemel/silverbullet
```

## enter running telebullen jupy
```
docker exec -i -t telebullen_jupy /bin/bash
```


