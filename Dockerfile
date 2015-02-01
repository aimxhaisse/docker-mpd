FROM ubuntu:vivid
MAINTAINER s. rannou <mxs@sbrk.org>

RUN apt-get update && apt-get install -q -y	\
    	    mpd	&&				\
	    apt-get clean -q -y

RUN service mpd start &&			\
    service mpd stop

ADD patches /
CMD /run.bash
