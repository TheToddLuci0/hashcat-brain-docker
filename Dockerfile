FROM ubuntu

RUN apt-get update; apt-get install -y git make gcc g++

RUN  git clone https://github.com/hashcat/hashcat.git ; \
    cd hashcat ;\
    make ;\
    make install

ENV BRAIN_PORT=13743 BRAIN_PASSWORD=hashes
EXPOSE ${BRAIN_PORT}
CMD hashcat --brain-server --brain-port ${BRAIN_PORT} --brain-password ${BRAIN_PASSWORD}

