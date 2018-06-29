FROM phenoscape/owlery:edge

MAINTAINER Robbie - Virtual Fly Brain <rcourt@ed.ac.uk>

ENV OWLURL=http://www.virtualflybrain.org/owl/vfb.owl

COPY application.conf /srv/conf/application.conf

COPY startup.sh /startup.sh

RUN chmod +x /startup.sh

ENTRYPOINT ["/startup.sh"]
