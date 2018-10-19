FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y -q python3-sphinx texlive texlive-latex-extra pandoc build-essential python3-pip

RUN pip3 install sphinx-autoapi

RUN mkdir documents

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]

