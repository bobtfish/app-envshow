FROM progrium/buildstep:latest

MAINTAINER bobtfish@bobtfish.net

RUN mkdir /app;apt-get update;apt-get upgrade -y --force-yes
ADD /app.psgi /app/app.psgi
ADD /cpanfile /app/cpanfile
RUN /build/builder

ENTRYPOINT ["/bin/bash"]
CMD []

