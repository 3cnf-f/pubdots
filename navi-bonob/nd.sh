#!/bin/bash
docker run --name nd -u 1000:1000 -e ND_SCANSCHEDULE=1h -e ND_PORT=4533 -e ND_BASEURL="" -e ND_LOGLEVEL=debug -p 4533:4533 -v /home/minzicola/navidrome-bonobo/navidrome/navidata:/data -v /home/minzicola/navidrome-bonobo/navidrome/navimusic:/music:ro deluan/navidrome:latest
