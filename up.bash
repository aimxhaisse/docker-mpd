#!/usr/bin/env bash
#
# Helper to run mxs-mpd, customize this to your needs

docker stop mxs-mpd &> /dev/null
docker rm mxs-mpd &> /dev/null
docker build -t docker-mpd .
docker run --name mxs-mpd -v $(pwd)/music:/music -p 127.0.0.1:20006:8000 -p 127.0.0.1:6600:6600 docker-mpd
