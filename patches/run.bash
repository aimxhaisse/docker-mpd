#!/bin/sh

VOLUME=/music

mkdir -p $VOLUME/playlists
chown -R mpd $VOLUME

mpd --no-daemon --verbose
