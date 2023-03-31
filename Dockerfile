FROM ubuntu:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y texlive texlive-binaries  texinfo lmodern wget texlive-fonts-extra && \
    rm -rf /var/lib/apt/lists/*


RUN wget http://mirrors.ctan.org/macros/latex/contrib/moderncv.zip && \
  unzip moderncv.zip && \
  mkdir -p ~/texmf/tex/latex && \
  mv moderncv/ ~/texmf/tex/latex/ && \
  rm moderncv.zip

RUN texhash ~/texmf/

# Mount the host's current working directory onto /data so texi2pdf can be used without full paths
VOLUME "/data"
WORKDIR /data

ENTRYPOINT ["/usr/bin/texi2pdf"]

