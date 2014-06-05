FROM progrium/buildstep:latest

MAINTAINER bobtfish@bobtfish.net

RUN mkdir /app;apt-get update;apt-get upgrade -y --force-yes
RUN /build/builder
ADD /app.psgi /app/app.psgi
ADD /cpanfile /app/cpanfile

ENTRYPOINT ["/bin/bash"]
CMD []

