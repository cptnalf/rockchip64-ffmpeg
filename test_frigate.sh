#!/bin/bash

# docker buildx build --platform=linux/arm64 -t cptnalf/frigate:0.9.4 .


docker run -d \
  --name frigate \
  --mount type=tmpfs,target=/tmp,tmpfs-size=805306368 \
  -v /srv/shinobi/videos2/videos2:/media/frigate \
  -v ~/src/frigate/config:/config \
  -v /etc/localtime:/etc/localtime:ro \
  -e FRIGATE_CAM_UN=frigate \
  -e FRIGATE_CAM_PW=etagirf \
  -e MPLCONFIGDIR=/config/mpl \
  -e PUID=1000 -e PGID=1000 \
  -p 5002:5000 \
  -p 1935:1945 \
  cptnalf/frigate:0.9.4

# cptnalf/frigate:0.9.1-aarch64-nfs  